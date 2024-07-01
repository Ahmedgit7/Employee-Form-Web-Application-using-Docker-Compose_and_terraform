// Import the Express framework
const express = require("express");

// Import the Mongoose library for MongoDB
const mongoose = require("mongoose");

// Import body-parser for parsing incoming data
const bodyParser = require("body-parser");

// Create an Express application
const app = express();

// Set the view engine to EJS for rendering views
app.set("view engine", "ejs");

// Use body-parser for URL-encoded data
app.use(bodyParser.urlencoded({ extended: false }));

// Connect to MongoDB
mongoose
  .connect(
    "mongodb://mongo:27017/app",
    // Configuration for MongoDB connection when using Docker
    { useNewUrlParser: true, useUnifiedTopology: true }
  )
  // Successful MongoDB connection message
  .then(() => console.log("MongoDB Connected"))
  // Error handling for MongoDB connection
  .catch((err) => console.log(err));

// Import the Item model
const Item = require("./models/Item");

// Log a message when the home route is accessed
app.get("/", (req, res) => {
  console.log("Hit home route");

  Item.find()
    // Render the 'index' view with retrieved items
    .then((items) => res.render("index", { items }))
    // Handle errors when no items are found
    .catch((err) => res.status(404).json({ msg: "No items found" }));
});

// Corrected form action to match the server route
app.post("/submit", (req, res) => {
  const newItem = new Item({
    name: req.body.firstName, // Assuming your HTML form has input with name="firstName"
    firstName: req.body.firstName,
    lastName: req.body.lastName,
    email: req.body.email,
    hobbies: req.body.hobbies,
    roleTitle: req.body.roleTitle || [],
    roleDetails: req.body.roleDetails || []
});

  // Save a new item and redirect to the home route
  newItem.save().then((item) => res.redirect("/"));
});

// Specify the port the Node server is listening on
const port = 3000;

// Start the server and log the port it's running on
app.listen(port, () => console.log("Server is running on port: ", port));

