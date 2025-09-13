
import { Request, Response, NextFunction } from 'express';
import { z } from 'zod';
import HttpException from '@/exceptions/HttpException';
import { userSchema, UserType } from '@/models/user';
import User from '@/models/user';

// Get user profile
export const getProfile = async (req: Request, res: Response, next: NextFunction) => {
    try {
        if (!req.user?.id) {
            return next(new HttpException(401, "Unauthorized"));
        }

        const user = await User.findById(req.user.id).select('-password -confirm_password');
        if (!user) {
            return next(new HttpException(404, "User not found"));
        }

        res.status(200).json(user);
    } catch (error) {
        next(error);
    }
};
// Update user profile
export const updateProfile = async (req: Request, res: Response, next: NextFunction) => {
    try {
        if (!req.user?.id) {
            return next(new HttpException(401, "Unauthorized"));
        }

        const parsedData: Partial<UserType> = userSchema.partial().parse(req.body);

        const user = await User.findById(req.user.id);
        if (!user) {
            return next(new HttpException(404, "User not found"));
        }

        Object.assign(user, parsedData);
        await user.save();

        res.status(200).json({ message: "Profile updated successfully" });
    } catch (error) {
        if (error instanceof z.ZodError) {
            return next(new HttpException(400, error.errors.map(e => e.message).join(", ")));
        }
        next(error);
    }
};   
           