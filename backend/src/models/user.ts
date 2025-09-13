import mongoose, { Schema, Document } from 'mongoose';
import { z } from 'zod';

// Zod schema for validation
export const userSchema = z.object({
    name: z.string({
        required_error: "Name is required",
        invalid_type_error: "Name must be a string"
    }).min(3, "Name must be at least 3 characters"),
    
    mobile: z.string({
        required_error: "Mobile number is required",
        invalid_type_error: "Mobile number must be a string"
    }).regex(/^\d{10}$/, "Mobile number must be exactly 10 digits"),
    
    email: z.string({
        required_error: "Email is required",
        invalid_type_error: "Email must be a string"
    }).email("Invalid email format"),
    
    pincode: z.string({
        required_error: "Pincode is required",
        invalid_type_error: "Pincode must be a string"
    }).regex(/^\d{6}$/, "Pincode must be exactly 6 digits"),
    
    address: z.string({
        required_error: "Address is required"
    }).min(5, "Address must be at least 5 characters"),
    
    city: z.string({
        required_error: "City is required"
    }).min(2, "City must be at least 2 characters"),
    
    state: z.string({
        required_error: "State is required"
    }).min(2, "State must be at least 2 characters"),
    
    country: z.string({
        required_error: "Country is required"
    }).min(2, "Country must be at least 2 characters"),

    isEmailVerified: z.boolean().default(false).optional()
});

// Type inference from Zod schema
export type UserType = z.infer<typeof userSchema>;

interface IUser extends Document, UserType {}

const mongooseUserSchema: Schema = new Schema({
    name: { type: String, required: true },
    mobile: { type: String, required: true },
    email: { type: String, required: true },
    pincode: { type: String, required: true },
    address: { type: String, required: true },
    city: { type: String, required: true },
    state: { type: String, required: true },
    country: { type: String, required: true },
    isEmailVerified: { type: Boolean, default: false }
},{
    versionKey: false,
    timestamps: true
});

const User = mongoose.model<IUser>('users', mongooseUserSchema);
export default User;