// Email regex (RFC 5322 Official Standard)
import { JwtPayload } from "jsonwebtoken";
import { z } from "zod";

const EMAIL_REGEX = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

export const loginSchema = z.object({
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    }).regex(EMAIL_REGEX, "Invalid email format"),
    password: z.string({
        required_error: "Password is required",
        invalid_type_error: "Password must be a string"
    }).min(6, "Password must be at least 6 characters")
});

export const emailSchema = z.object({
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    }).regex(EMAIL_REGEX, "Invalid email format")
});

export const resetPasswordSchema = z.object({
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    }).regex(EMAIL_REGEX, "Invalid email format"),
    newPassword: z.string({
        required_error: "New password is required",
        invalid_type_error: "New password must be a string"
    }).min(6, "New password must be at least 6 characters")
});

export interface SessionPayload extends JwtPayload{
    id: string, name: string, email: string, mobile: string 
}

declare module "express-serve-static-core" {
    interface Request {
        user?: SessionPayload;
    }
}
