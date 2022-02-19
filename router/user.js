import express from "express";
import { createUser } from "../controllers/createuser.controller.js";
import { getUser } from "../controllers/getuser.controller.js";
const router = express.Router();
router.post("/register", createUser);
router.get("/getuser", getUser);
export default router;
