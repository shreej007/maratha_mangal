import { Router } from 'express'
import authenticateToken from '@/middleware/auth';
import { addUser, getAllUser, getUserById, updateUserDetails, deleteUserDetails} from '@/controllers/userController';

 
const router = Router();

router.post('/', authenticateToken, addUser);

router.get('/', authenticateToken, getAllUser);

router.get('/:id', authenticateToken, getUserById);

router.put('/:id', authenticateToken, updateUserDetails);

router.delete('/:id', authenticateToken, deleteUserDetails);


export default router;
 