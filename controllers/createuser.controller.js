import userdb from "../models/users.js";
export const createUser = (req, res) => {
  const userData = req.body;
  userdb.create(userData, (err, data) => {
    if (err) res.status(500).send(err);
    else res.status(201).send({ status: "created", data: data });
  });
};
