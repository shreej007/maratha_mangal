import { Request, Response, NextFunction } from 'express';
import { z } from 'zod';
import HttpException from '@/exceptions/HttpException';

import { loginSchema, emailSchema, resetPasswordSchema } from '@/schema/common';
import { userSchema, UserType } from '@/models/user';
import User from '@/models/user';
import bcrypt from 'bcryptjs';
import { createJwtToken } from '@/utils/utils';

export const register = async (req: Request, res: Response, next: NextFunction) => {
  console.log("Register endpoint hit");
    try {
        const parsedData: UserType = userSchema.parse(req.body);

        if (parsedData.basic_info.password !== parsedData.basic_info.confirm_password) {
            return next(new HttpException(400, "Passwords do not match"));
        }

        const existingUser = await User.findOne({ email: parsedData.basic_info.email });
        if (existingUser) {
            return next(new HttpException(409, "Email already in use"));
        }

        const hashedPassword = await bcrypt.hash(parsedData.basic_info.password, 10);
        const newUser = new User({
            ...parsedData,
            password: hashedPassword,
            confirm_password: hashedPassword // Store hashed confirm_password as well
        });

        await newUser.save();

        res.status(201).json({ message: "User registered successfully" });
    } catch (error) {
        if (error instanceof z.ZodError) {
            return next(new HttpException(400, error.errors.map(e => e.message).join(", ")));
        }
        next(error);
    }
};

export const login = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const parsedData = loginSchema.parse(req.body);

        console.log("Login attempt for email:", parsedData.email);

  
        const user = await User.findOne({ "basic_info.email": parsedData.email });

        console.log("User found:", user);
        if (!user) {
            return next(new HttpException(401, "Invalid email or password"));
        }

        const isPasswordValid = await User.findOne({ "basic_info.password": parsedData.password, "basic_info.email": user.basic_info.email });

        console.log("Is password valid:", isPasswordValid)
        if (!isPasswordValid) {
            return next(new HttpException(401, "Invalid email or password"));
        }

        const token = createJwtToken({ id: user.id, name: user.basic_info.first_name, email: user.basic_info.email, mobile: user.basic_info.mobile_no });
            res.status(200).json({
              success: true,
              message: 'Login successful',
              data: {
                user,
                token
              }
            });

            console.log("Login successful, token generated", token);

    } catch (error) {
        if (error instanceof z.ZodError) {
            return next(new HttpException(400, error.errors.map(e => e.message).join(", ")));
        }
        next(error);
    }
};

export const forgotPassword = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const parsedData = emailSchema.parse(req.body);

        const user = await User.findOne({ email: parsedData.email }); // Find user by email
        if (!user) {
            return next(new HttpException(404, "User not found"));
        }

        // Here you would typically send a password reset email with a token
        // For simplicity, we'll just return a success message

        res.status(200).json({ message: "Password reset link sent to email" });
    } catch (error) {
        if (error instanceof z.ZodError) {
            return next(new HttpException(400, error.errors.map(e => e.message).join(", ")));
        }
        next(error);
    }
};  
export const resetPassword = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const parsedData = resetPasswordSchema.parse(req.body);

        const user = await User.findOne({ email: parsedData.email });
        if (!user) {
            return next(new HttpException(404, "User not found"));
        }

        const hashedPassword = await bcrypt.hash(parsedData.newPassword, 10);
        user.basic_info.password = hashedPassword;
        // user.basic_info.confirm_password = hashedPassword; // Update confirm_password as well
        await user.save();

        res.status(200).json({ message: "Password reset successful" });
    } catch (error) {
        if (error instanceof z.ZodError) {
            return next(new HttpException(400, error.errors.map(e => e.message).join(", ")));
        }
        next(error);
    }
};