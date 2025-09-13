import { NextFunction, Request, Response } from "express";
import HttpException from "./HttpException";

const errorHandler = (err: HttpException, req: Request, res: Response, next: NextFunction) => {
  const status = err.statusCode || 500;
  const message = err.message || "Internal Server Error";

  console.error(`[ERROR] ${message}`);

  res.status(status).json({
    success: false,
    status,
    message
  });
};

export default errorHandler;