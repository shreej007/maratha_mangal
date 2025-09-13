import { Request, Response, NextFunction } from 'express';
import { z } from 'zod';
import HttpException from '@/exceptions/HttpException';
import { loginSchema, verifyOtpSchema, verifyEmailSchema, emailSchema, adminLoginSchema} from '@/schema/common';
import { createJwtToken, generateOtp } from '@/utils/utils';
import User, { userSchema } from '@/models/user';
import Admin from '@/models/admin';
import Otp from '@/models/otp';

// This function is used to login
export const login = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const validatedData = loginSchema.safeParse(req.body);
    if (!validatedData.success) {
      throw new HttpException(500, 'Validation failed', validatedData.error);
    }
    const { mobile } = validatedData.data;
    const otpExists = await Otp.findOne({ mobile });

    const expiryTime = new Date(Date.now() + 2 * 60 * 1000); // 2 minutes from now
    const otp = generateOtp();

    if (otpExists) {
        otpExists.otp = otp.toString();
        otpExists.expirationTime = expiryTime;
        await otpExists.save();
      // Trigger sms service to send OTP
      res.status(200).json({
        success: true,
        message: 'OTP sent successfully',
        otp
      });
    }

    const newOtp = new Otp({ mobile, otp, expirationTime: expiryTime });
    await newOtp.save();
    // Trigger sms service to send OTP
    res.status(200).json({
      success: true,
      message: 'OTP sent successfully',
      otp
    });
  } catch (error) {

    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }

    console.error('Error sending OTP:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

// This function will generate a new OTP and send it to the user's mobile number
export const verifyOtp = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const validatedData = verifyOtpSchema.safeParse(req.body);
    
    if (!validatedData.success) {
      throw new HttpException(500, 'Validation failed', validatedData.error);
    }

    const { mobile, otp } = validatedData.data;
    const otpRecord = await Otp.findOne({ mobile });
    const currentTime = new Date();
    if(!otpRecord){
      res.status(500).json({
        success: false,
        message: 'OTP not found',
      }); 
    }
    else {
      if (otpRecord.expirationTime < currentTime) {
        res.status(500).json({
          success: false,
          message: 'OTP expired',
        });
      }
      else {
        if (otpRecord.otp !== otp) {
          res.status(500).json({
            success: false,
            message: 'Invalid OTP',
          });
        }
        else {
          await Otp.deleteOne({ mobile });
          const user = await User.findOne({ mobile });
          if (!user) {
            res.status(200).json({
              success: true,
              message: 'OTP verified successfully',
              data: []
            });
          }
          else  {
            const token = createJwtToken({ id: user.id, name: user.name, email: user.email, mobile: user.mobile });
            res.status(200).json({
              success: true,
              message: 'OTP verified successfully',
              data: {
                user,
                token
              }
            });
          }
         
        }
      }
    }
  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }
    console.error('Error verifying OTP:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

// This function will create new user
export const signUp = async (req: Request, res: Response, next: NextFunction) => {
    try {
      // Validate request body against schema
      const validatedData = userSchema.safeParse(req.body);
  
      if (!validatedData.success) {
        // If validation fails, throw an error with details
        throw new HttpException(
          500,
          'Validation failed',
          validatedData.error
        );
      }
  
      const existingUser = await User.findOne({ email: validatedData.data.email, mobile: validatedData.data.mobile });
  
      if (existingUser) {
        return next(new HttpException(409, 'User already exists with this email or mobile number', ));
      }
  
      // Create new user with validated data
      const newUser = new User(validatedData.data);
      await newUser.save();
      const token = createJwtToken({ id: newUser.id, name: newUser.name, email: newUser.email, mobile: newUser.mobile });
  
      res.status(201).json({
        success: true,
        message: 'User created successfully',
        data: {
          user: newUser,
          token
        }
      });
    } catch (error) {
      if (error instanceof z.ZodError) {
        // Handle validation errors
        return next(new HttpException(500, 'Validation failed', error));
      }
      console.error('Error creating user:', error);
      next(new HttpException(500, 'Internal Server Error'));
    }
};

// This Function is used to resend otp to the user again
export const resendOtp = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const validatedData = loginSchema.safeParse(req.body);
    if (!validatedData.success) {
      throw new HttpException(500, 'Validation failed', validatedData.error);
    }
    const { mobile } = validatedData.data;
    const otpExists = await Otp.findOne({ mobile });

    const expiryTime = new Date(Date.now() + 2 * 60 * 1000); // 2 minutes from now
    const otp = generateOtp();

    if (otpExists) {
        otpExists.otp = otp.toString();
        otpExists.expirationTime = expiryTime;
        await otpExists.save();
      // Trigger sms service to send OTP
      res.status(200).json({
        success: true,
        message: 'OTP sent successfully',
        otp
      });
    }

    const newOtp = new Otp({ mobile, otp, expirationTime: expiryTime });
    await newOtp.save();
    // Trigger sms service to send OTP
    res.status(200).json({
      success: true,
      message: 'OTP sent successfully',
      otp
    });
  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }
    console.error('Error sending OTP:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

// This Function is used to send email otp
export const sendEmailOtp = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const validatedData = emailSchema.safeParse(req.body);

    if (!validatedData.success) {
      throw new HttpException(500, 'Validation failed', validatedData.error);
    }

    const { email } = validatedData.data;
    const otp = generateOtp();
    const expiryTime = new Date(Date.now() + 2 * 60 * 1000); // 2 minutes from now

    // Update existing OTP or create new one
    await Otp.findOneAndUpdate(
      { email },
      { otp: otp.toString(), expirationTime: expiryTime },
      { upsert: true, new: true }
    );

    // Here you would integrate with your email service to send the OTP
    // For example: await sendEmail(email, otp);

    res.status(200).json({
      success: true,
      message: 'OTP sent successfully to email',
      otp // Remove this in production
    });

  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }
    console.error('Error sending email OTP:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

// This function is used to verify email with otp
export const verifyEmail = async (req: Request, res: Response, next: NextFunction) => {
  try {
    // Validate request body using the existing schema from common.ts
    const validatedData = verifyEmailSchema.safeParse(req.body);

    if (!validatedData.success) {
      throw new HttpException(500, 'Validation failed', validatedData.error);
    }

    const { email, otp } = validatedData.data;
    
    // Find the OTP record for this email
    const otpRecord = await Otp.findOne({ email });
    const currentTime = new Date();

    if (!otpRecord) {
      res.status(500).json({
        success: false,
        message: 'OTP not found',
      });
    }
    else {
      if (otpRecord.expirationTime < currentTime) {
        res.status(500).json({
          success: false,
          message: 'OTP expired',
        });
      }
      if (otpRecord.otp !== otp) {
        res.status(500).json({
          success: false,
          message: 'Invalid OTP',
        });
      }
      // If OTP is valid, delete it
      await Otp.deleteOne({ email });

      // Update user's email verification status if needed
      await User.findOneAndUpdate(
        { email },
        { isEmailVerified: true },
        { new: true }
      );
  
      res.status(200).json({
        success: true,
        message: 'Email verified successfully'
      });
    }
  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }
    console.error('Error verifying email:', error);
    next(new HttpException(500, 'Internal Server Error'));
  }
};

// This function is used for admin login
export const adminLogin = async (req: Request, res: Response, next: NextFunction) => {
  console.log('Admin login request received:', req.body);
  try {
    // Validate request body
    const validatedData = adminLoginSchema.safeParse(req.body);

    if (!validatedData.success) {
        next(new HttpException(500, 'Validation failed', validatedData.error));
    }
    else {
      const { mobile, password } = validatedData.data;
      // Find admin user
      const admin = await Admin.findOne({ 
          mobile
      });
      console.log('Admin found:', admin);

      if (!admin) {
          next(new HttpException(401, 'Invalid credentials'));
      }

      // Verify password (assuming you have a password verification method)
      // This depends on how you're storing passwords (hopefully hashed)
      const isValidPassword = admin?.password == password;
      if (!isValidPassword) {
          next(new HttpException(401, 'Invalid credentials'));
      }
      else {
        const adminObject = {
          id: admin.id, 
          name: admin.name, 
          email: admin.email, 
          mobile: admin.mobile,
        }
        // Generate JWT token
        const token = createJwtToken(adminObject);

        res.status(200).json({
          success: true,
          message: 'Admin logged in successfully',
          data: {
              user: adminObject,
              token
          }
        });
      }
    } 
  } catch (error) {
    if (error instanceof z.ZodError) {
      return next(new HttpException(500, 'Validation failed', error));
    }
    console.error('Admin login error:', error);
    next(error instanceof HttpException ? error : new HttpException(500, 'Internal Server Error'));
  }
};


