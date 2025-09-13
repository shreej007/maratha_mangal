import { Request, Response, NextFunction } from 'express';
import HttpException from '@/exceptions/HttpException';
import User, { userSchema } from '@/models/user';
import { z } from 'zod';


export const addUser = async (req: Request, res: Response, next: NextFunction) => {
  try {
    if (!req.user?.id) {
      return next(new HttpException(401, 'User is not authenticated'));
    }
    const validatedData = userSchema.safeParse(req.body);
    if (!validatedData.success) {
      return next(new HttpException(400, 'Validation failed', validatedData.error));
    }

    const existingUser = await User.findOne({ email: validatedData.data.email, mobile: validatedData.data.mobile });
    if (existingUser) {
      return next(new HttpException(409, 'User with this email or mobile already exists'));
    }
    // Create a new user instance
    const newUser = new User(validatedData.data);
    await newUser.save();

    res.status(201).json({
      message: 'User created successfully',
      user: newUser
    });
  } catch (error) {
    if (error instanceof z.ZodError) {
      // Handle validation errors
      return next(new HttpException(400, 'Validation failed', error));
    }
    console.error('Error creating user:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
}

export const getAllUser = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const users = await User.find();

    // Validate the response data
    // const validatedUsers = users.map(user => userSchema.parse(user.toObject()));

    res.status(200).json({
      message: 'All users retrieved successfully',
      data: users
    });
  } catch (error) {
    console.log((error))
    next(new HttpException(500, 'Internal Server Error'));
  }
};

export const getUserById = async (req: Request, res: Response, next: NextFunction) => {
  try {

    if (!req.user?.id) {
      return next(new HttpException(401, 'User not authenticated'));
    }

    const userId = req.params.id;
    if (!userId) {
      return next(new HttpException(400, 'User ID is required'));
    }

    const user = await User.findOne({ _id: userId });
    if (!user) {
      return next(new HttpException(404, 'User not found'));
    }

    // Validate the user data
    res.status(200).json({
      message: 'User retrieved successfully',
      data: user
    });

  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(400, 'Validation failed', error));
    }
    console.error('Error retrieving user:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

export const updateUserDetails = async (req: Request, res: Response, next: NextFunction) => {
  try {
    if (!req.user?.id) {
      return next(new HttpException(401, 'User not authenticated'));
    }

    const userId = req.params.id;
    if (!userId) {
      return next(new HttpException(400, 'User ID is required'));
    }

    const validatedData = userSchema.safeParse(req.body);
    if (!validatedData.success) {
      return next(new HttpException(400, 'Validation failed', validatedData.error));
    }

    const user = await User.findByIdAndUpdate(
      userId,
      validatedData.data,
      { new: true }
    );
    if (!user) {
      return next(new HttpException(404, 'User not found'));
    }

    res.status(200).json({
      message: 'User updated successfully',
      data: user
    });
  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(400, 'Validation failed', error));
    }
    console.error('Error updating user:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
}

export const deleteUserDetails = async (req: Request, res: Response, next: NextFunction) => {
  try {
    if (!req.user?.id) {
      return next(new HttpException(401, 'User not authenticated'));
    }

    const userId = req.params.id;
    if (!userId) {
      return next(new HttpException(400, 'User ID is required'));
    }

    const user = await User.findByIdAndDelete(userId);
    if (!user) {
      return next(new HttpException(404, 'User not found'));
    }

    res.status(200).json({
      message: 'User deleted successfully',
    });
  } catch (error) {
   if (error instanceof z.ZodError) {
      return next(new HttpException(400, 'Validation failed', error));
    }
    console.error('Error updating user:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};



