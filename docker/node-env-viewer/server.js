const http = require('http');

const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  res.write(' *** Environment Variables ***\n');

  // Loop through environment variables and log their names and values
  for (const key in process.env) {
    if (process.env.hasOwnProperty(key)) {
      res.write(`${key}: ${process.env[key]}\n`);
    }
  }

  res.end();
});

server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
