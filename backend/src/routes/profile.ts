
import { Router } from "express";
import authenticateToken from "@/middleware/auth";
import { getProfile, updateProfile } from "@/controllers/profileController";


const router = Router();

router.get('/:id', authenticateToken, getProfile);
router.put('/:id', authenticateToken, updateProfile);

export default router;
 
