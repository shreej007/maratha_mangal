import { Router } from 'express';
import { login, register, forgotPassword } from '../controllers/authController';


const router = Router();

router.post('/login', login);
router.post('/forgot_password', forgotPassword);

router.post('/register', register);

export default router;