// Generated by IcedCoffeeScript 1.8.0-e
(function() {
  var fs, http, server;

  http = require("http");

  fs = require("fs");

  server = http.createServer(function(req, res) {
    res.writeHead(200, {
      "content-type": "text/plain"
    });
    return fs.createReadStream(process.argv[3]).pipe(res);
  });

  server.listen(process.argv[2]);

}).call(this);
