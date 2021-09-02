const express = require("express");
const mysql = require('mysql')

const app = express();

const config = {
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'nodedb'
}

const connection = mysql.createConnection(config)

app.get("/", (req, res) => {
  res.send("Teste docker com express");
});

app.listen(3000);