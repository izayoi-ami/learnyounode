// Generated by IcedCoffeeScript 1.8.0-e
(function() {
  var net, server, strftime;

  net = require("net");

  strftime = require("strftime");

  server = net.createServer(function(socket) {
    var data;
    data = strftime("%Y-%m-%d %H:%M");
    return socket.end(data + "\n");
  });

  server.listen(process.argv[2]);

}).call(this);
