import mongoose from "mongoose";
const userSchema=mongoose.Schema({
name:String,
dob:Date,
phno:Number,
age:Number,
college:String,
usertype:String,
rollno:String,
mailid:String,
city:String,
state:String,
country:String,
password:String,
userid:String

})
export default mongoose.model('users',userSchema);