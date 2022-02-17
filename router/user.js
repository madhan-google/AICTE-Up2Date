import express from "express";
import users from "../models/users.js"
const router =express.Router();
const app=express();
router.post('/register',(req,res)=>{
    res.send("newuser");
})
export default router