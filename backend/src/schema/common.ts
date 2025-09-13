import { JwtPayload } from 'jsonwebtoken';
import { z } from 'zod';

const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

// Validation Schemas
export const loginSchema = z.object({
    mobile: z.string({
        required_error: "Mobile number is required",
        invalid_type_error: "Mobile number must be a string"
    }).regex(/^[0-9]{10}$/, 'Mobile number must be 10 digits')
});

export const verifyOtpSchema = z.object({
    mobile: z.string({
        required_error: "Mobile number is required",
        invalid_type_error: "Mobile number must be a string"
    }).regex(/^[0-9]{10}$/, 'Mobile number must be 10 digits'),
    otp: z.string({
        required_error: "OTP is required",
        invalid_type_error: "OTP must be a string"
    }).regex(/^[0-9]{4}$/, 'OTP must be 4 digits')
});

export const emailSchema = z.object({
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    })
      .email('Invalid email format')
      .regex(emailRegex, 'Invalid email format')
      .toLowerCase()
  });

export const verifyEmailSchema = z.object({
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    }).email('Invalid email format') 
    .regex(emailRegex, 'Invalid email format') 
    .toLowerCase(),
    otp: z.string({
        required_error: "OTP is required",
        invalid_type_error: "OTP must be a string"
    }).regex(/^[0-9]{4}$/, 'OTP must be 4 digits')
});

export const adminLoginSchema = z.object({
    mobile: z.string({
        required_error: "Mobile number is required",
        invalid_type_error: "Mobile number must be a string"
    }).regex(/^[0-9]{10}$/, 'Mobile number must be 10 digits'),

    password: z.string({
        required_error: "Password is required",
        invalid_type_error: "Password must be a string"
    })
    // .min(6, 'Password must be at least 6 characters')
    // .regex(/[!@#$%^&*(),.?":{}|<>]/, 'Password must contain at least one special character')
    // .regex(/[0-9]/, 'Password must contain at least one number')
    // .regex(/[a-z]/, 'Password must contain at least one lowercase letter')
    // .regex(/[A-Z]/, 'Password must contain at least one uppercase letter')
});



export const RequestPetSchema = z.object({
  name: z.string(
    { required_error: "Pet name is required", invalid_type_error: "Pet name must be a string" }
  ).min(1, "Pet name is required"),
  type: z.string({
    required_error: "Pet type is required",
    invalid_type_error: "Pet type must be a string"
  }).refine(value => ['dog', 'cat'].includes(value), {
    message: "Pet type must be one of: dog, cat, bird, fish, reptile"
  }),
  breed: z.string({
    invalid_type_error: "Breed must be a string",
    required_error: "Breed is required if pet type is dog or cat"
  }).optional().refine(value => value === undefined || value.length > 0, {
    message: "Breed cannot be an empty string"
  }),
  age: z.number({
    invalid_type_error: "Age must be a number",
    required_error: "Age is required if pet type is dog or cat"
  }).min(0, "Age must be a positive number")
    .refine(value => value >= 0, {
      message: "Age must be a positive number"
    }).optional(),
  weight: z.number().min(0, "Weight must be a positive number").optional(),
  notes: z.string().optional(),

});

export interface SessionPayload extends JwtPayload{
    id: string, name: string, email: string, mobile: string 
}

declare module "express-serve-static-core" {
    interface Request {
        user?: SessionPayload;
    }
}

