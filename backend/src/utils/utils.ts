import { SessionPayload } from '@/schema/common';
import jwt,{ JwtPayload } from 'jsonwebtoken';

const generateOtp = () => {
    const digits = "0123456789";
    let OTP = "";

    // Ensure the first digit is not 0
    OTP += digits[Math.floor(Math.random() * 9) + 1]; // Picks a digit from 1-9

    for (let i = 1; i < 4; i++) {
        OTP += digits[Math.floor(Math.random() * 10)];
    }

    return parseInt(OTP);
};

const createJwtToken = (payload: SessionPayload) => {
    const secret = process.env.JWT_SECRET || '';
    const token = jwt.sign(payload, secret, { expiresIn: "12h", algorithm: "HS256" });
    return token;
};

export { generateOtp, createJwtToken };