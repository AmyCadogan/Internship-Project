const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

//parse application/json
app.use(bodyParser.json());

//create database connection
const conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'project'
});

//connect to database
conn.connect((err) =>{
  if(err) throw err;
  console.log('Mysql connected....');
});

//server listening
app.listen(3000,() =>{
  console.log('Server started on port 3000');
});

//show all products
app.get('/api/devices',(req,res) => {
  let sql = "SELECT * FROM temparaturestudy";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});

//show one product
app.get('/api/devices/:id',(req,res) => {
  let sql = "SELECT* FROM temparaturestudy where serialnum="+req.params.id;
  let query = conn.query(sql, (err,results) => {
    if (err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
  });
});
