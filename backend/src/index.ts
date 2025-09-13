import express, { Request, Response } from 'express';
import dotenv from 'dotenv';
import connectDB from '@/config/db';
import cors from 'cors';
import errorHandler from '@/exceptions/errorHandler';
import routes from '@/routes';

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;
const corsOption = {
  origin: '*',
  credentials: true
}

// Middleware
app.use(express.json());
app.use(cors(corsOption));


// MongoDB Connection
connectDB()

app.get('/', (req: Request,res: Response) => {
  res.status(200).json({ message: 'Server is up and running!! Welcome to WM' })
})

app.use('/api', routes);

app.use(errorHandler);

// Start Server
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});