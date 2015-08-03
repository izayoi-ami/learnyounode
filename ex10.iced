net = require "net"
strftime = require "strftime"
server = net.createServer (socket)->
  data = strftime("%Y-%m-%d %H:%M")
  socket.end(data+"\n")
server.listen process.argv[2]
