// models/item.js

const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const ItemSchema = new Schema({
  firstName: {
    type: String,
    required: true,
  },
  lastName: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    required: true,
  },
  hobbies: {
    type: String,
    required: true,
  },
  roleTitle: [{
    type: String,
    required: true,
  }],
  roleDetails: [{
    type: String,
    required: true,
  }],
  date: {
    type: Date,
    default: Date.now,
  },
});

module.exports = Item = mongoose.model("item", ItemSchema);

