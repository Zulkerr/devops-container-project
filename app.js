const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`
    <h1>Meine DevOps Container App</h1>
    <p>Version: 1.0.0</p>
    <p>Diese App läuft in einem Docker Container!</p>
  `);
});

app.listen(port, () => {
  console.log(`App läuft auf http://localhost:${port}`);
});