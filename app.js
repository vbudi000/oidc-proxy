'use strict';

const express = require('express');
var path = require('path');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('<HTML><HEAD><TITLE>OIDC Proxy</TITLE></HEAD><BODY><H1>OIDC Proxy</H1></BODY></HTML>');
});

app.get('/.well-known/openid-configuration', (req, res) => {
  res.setHeader('Content-Type', 'application/json');
  res.sendFile(path.join(__dirname, 'openid-config.json'));
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
