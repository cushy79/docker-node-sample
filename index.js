'use strict';

let app = require('express')();

app.get('/', (req, res) => {
  res.send(process.env.message);
});

app.listen(8080);
console.log("waiting")
