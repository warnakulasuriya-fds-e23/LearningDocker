const express = require("express");
const mongoose = require("mongoose");

const app = express();

const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("<h2>Hello there:) Nice to meet you!!:)yup</h2>");
});

// mongoose
//   .connect("mongodb://testuser:password123@172.18.0.2/?authSource=admin")
//   .then(() => console.log("Connected!"));

app.listen(port, () => console.log(`listening on port : ${port}`));
