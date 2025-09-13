import { ZodError } from 'zod';

// Define a type for validation errors
type ValidationError = {
  field?: string;
  message: string;
  code?: string;
}

export default class HttpException extends Error {
  public statusCode: number;
  public message: string;
  public errors?: ValidationError[] | ZodError;

  constructor(statusCode: number, message: string, errors?: ValidationError[] | ZodError) {
    super(message);
    this.statusCode = statusCode;
    this.message = message;
    this.errors = errors;
    Error.captureStackTrace(this, this.constructor);
  }
}
