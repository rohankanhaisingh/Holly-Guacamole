const express = require("express");
const bodyparser = require("body-parser");
const mysql = require("mysql");

const url = require("url");
const path = require("path");

const app = express();

app.use(express.static(path.join(__dirname, "../", "public")));

app.listen(8000, function () {

	console.log(`Server is actief op port 8000`);
});