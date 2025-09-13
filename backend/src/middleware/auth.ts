import { NextFunction, Request, Response } from "express";

import jwt from 'jsonwebtoken';
import HttpException from "../exceptions/HttpException";
import { SessionPayload } from "@/schema/common";

const authenticateToken = (req: Request, res: Response, next: NextFunction) => {
    try {
        const token = req.header("Authorization");
        if (!token) {
            return next(new HttpException(401, 'Access Denied'));
        }
        
        const decoded = jwt.verify(token.replace("Bearer ", ""), process.env.JWT_SECRET || '');
        
        if (typeof decoded === "string") {
            return next(new HttpException(403, 'Invalid Token Format'));
        }
        
        req.user = decoded as SessionPayload;
        next();
    } catch (error) {
        return next(new HttpException(403, 'Invalid or Expired Token'));
    }
};

export default authenticateToken;