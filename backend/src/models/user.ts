// src/models/user.model.ts
import mongoose, { Schema, Document, Model } from "mongoose";
import { z } from "zod";

export const userSchema = z.object({
  basic_info: z.object({
    first_name: z
      .string({ required_error: "First name is required", invalid_type_error: "First name must be a string" })
      .min(2, "First name must be at least 2 characters"),
    middle_name: z
      .string({ invalid_type_error: "Middle name must be a string" })
      .optional(),
    last_name: z
      .string({ required_error: "Last name is required", invalid_type_error: "Last name must be a string" })
      .min(2, "Last name must be at least 2 characters"),
    gender: z.enum(["male", "female", "other"], { required_error: "Gender is required" }),
    birth_date: z.string({ required_error: "Birth date is required", invalid_type_error: "Birth date must be a string" }),
    sub_caste: z.string({ required_error: "Sub caste is required", invalid_type_error: "Sub caste must be a string" }),
    email: z
      .string({ required_error: "Email is required", invalid_type_error: "Email must be a string" })
      .email("Invalid email format"),
    mobile_no: z
      .string({ required_error: "Mobile number is required", invalid_type_error: "Mobile number must be a string" })
      .regex(/^\d{10}$/, "Mobile number must be exactly 10 digits"),
    password: z
      .string({ required_error: "Password is required", invalid_type_error: "Password must be a string" })
      .min(6, "Password must be at least 6 characters"),
    confirm_password: z
      .string({ required_error: "Confirm password is required", invalid_type_error: "Confirm password must be a string" })
      .min(6, "Confirm password must be at least 6 characters"),
  }).refine(
    (b) => b.password === b.confirm_password,
    { message: "Passwords do not match", path: ["confirm_password"] }
  ),

  physical_attributes: z.object({
    height: z.string().optional(),
    weight: z.string().optional(),
    value_complaition: z.string().optional(),
    physical_disable: z.string().optional(),
    diet: z.string().optional(),
    spectacles: z.string().optional(),
    lens: z.string().optional(),
  }).optional(),

  horoscope_details: z.object({
    rashi: z.string().optional(),
    nakshatra: z.string().optional(),
    charan: z.string().optional(),
    nadi: z.string().optional(),
    gan: z.string().optional(),
    mangal: z.string().optional(),
    select_city: z.string().optional(),
    devak: z.string().optional(),
  }).optional(),

  educational_details: z.object({
    educatin_area: z.string().optional(),
    education: z.string().optional(),
    occupation_type: z.string().optional(),
    occupation: z.string().optional(),
    income: z.string().optional(),
  }).optional(),

  family_background: z.object({
    father_name: z.string().optional(),
    mother_name: z.string().optional(),
    brothers: z.string().optional(),
    married_brothers: z.string().optional(),
    sisters_name: z.string().optional(),
    married_sisters: z.string().optional(),
    parent_full_name: z.string().optional(),
    parent_occupation: z.string().optional(),
  }).optional(),

  exception: z.object({
    mangal: z.string().optional(),
    sub_caste: z.string().optional(),
    height: z.string().optional(),
    max_age_difference: z.string().optional(),
    expected_education: z.string().optional(),
    expected_occupation: z.string().optional(),
    expected_income_per_month: z.string().optional(),
    marital_status: z.string().optional(),
  }).optional(),

  profile_photos: z.object({
    profile_photo_one: z.string().optional(),
    profile_photo_two: z.string().optional(),
  }).optional(),
});

export type UserType = z.infer<typeof userSchema>;


export interface IUser extends Document {
  basic_info: {
    first_name: string;
    middle_name?: string;
    last_name: string;
    gender: "male" | "female" | "other";
    birth_date: string; // or Date if you prefer; keep in sync with API layer
    sub_caste: string;
    email: string;
    mobile_no: string;
    password: string; // hashed in practice
  };
  physical_attributes?: {
    height?: string;
    weight?: string;
    value_complaition?: string;
    physical_disable?: string;
    diet?: string;
    spectacles?: string;
    lens?: string;
  };
  horoscope_details?: {
    rashi?: string;
    nakshatra?: string;
    charan?: string;
    nadi?: string;
    gan?: string;
    mangal?: string;
    select_city?: string;
    devak?: string;
  };
  educational_details?: {
    educatin_area?: string;
    education?: string;
    occupation_type?: string;
    occupation?: string;
    income?: string;
  };
  family_background?: {
    father_name?: string;
    mother_name?: string;
    brothers?: string;
    married_brothers?: string;
    sisters_name?: string;
    married_sisters?: string;
    parent_full_name?: string;
    parent_occupation?: string;
  };
  exception?: {
    mangal?: string;
    sub_caste?: string;
    height?: string;
    max_age_difference?: string;
    expected_education?: string;
    expected_occupation?: string;
    expected_income_per_month?: string;
    marital_status?: string;
  };
  profile_photos?: {
    profile_photo_one?: string;
    profile_photo_two?: string;
  };
  createdAt: Date;
  updatedAt: Date;
}


const UserMongooseSchema = new Schema<IUser>(
  {
    basic_info: {
    first_name: { type: String, required: true, minlength: 2 },
    middle_name: { type: String },
    last_name: { type: String, required: true, minlength: 2 },
    gender: { type: String, enum: ["male", "female", "other"], required: true },
    birth_date: { type: String, required: true }, // change to Date if you prefer
    sub_caste: { type: String, required: true },
    email: { type: String, required: true, lowercase: true, index: true },
    mobile_no: { type: String, required: true },
    password: { type: String, required: true, select: false }, // store hashed; exclude by default
    // NOTE: confirm_password is for validation only; do NOT store it
  },

    physical_attributes: {
      height: String,
      weight: String,
      value_complaition: String,
      physical_disable: String,
      diet: String,
      spectacles: String,
      lens: String,
    },

    horoscope_details: {
      rashi: String,
      nakshatra: String,
      charan: String,
      nadi: String,
      gan: String,
      mangal: String,
      select_city: String,
      devak: String,
    },

    educational_details: {
      educatin_area: String,
      education: String,
      occupation_type: String,
      occupation: String,
      income: String,
    },

    family_background: {
      father_name: String,
      mother_name: String,
      brothers: String,
      married_brothers: String,
      sisters_name: String,
      married_sisters: String,
      parent_full_name: String,
      parent_occupation: String,
    },

    exception: {
      mangal: String,
      sub_caste: String,
      height: String,
      max_age_difference: String,
      expected_education: String,
      expected_occupation: String,
      expected_income_per_month: String,
      marital_status: String,
    },

    profile_photos: {
      profile_photo_one: String,
      profile_photo_two: String,
    },
  },
  {
    collection: "users",
    versionKey: false,
    timestamps: true,
  }
);

const User = mongoose.model<IUser>("User", UserMongooseSchema);
export default User;

