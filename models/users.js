import mongoose from "mongoose";
const userSchema = mongoose.Schema({
  name: String,
  dob: String,
  phno: { type: Number },
  age: { type: Number },
  college: String,
  usertype: String,
  rollno: String,
  mailid: String,
  city: String,
  state: String,
  password: String,
  userid: String,
});
export default mongoose.model('users',userSchema);
