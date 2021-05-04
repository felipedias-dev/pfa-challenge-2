const express = require('express');
const mysql = require('mysql');

const app = express();

app.use(express.json());

app.get('/', (req, res) => {
  const conn = mysql.createConnection({
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'fullcycle'
  });

  conn.connect(function (err, ...args) {
    if (err) {
      console.log('Erro:', err);
      return
    }
  });

  console.log('MySQL connected!');

  let modules = [];

  conn.query('SELECT * FROM modules AS module;', function (err, results, fields) {
    if (err) throw err;

    const parsedResults = JSON.parse(JSON.stringify(results));

    parsedResults.forEach(result => {
      modules.push(result);
    });
    
    console.log('Modules:', modules);
    res.json(modules);
  });

  conn.end();
});

app.listen(5000, console.log('API running on port 5000'));
