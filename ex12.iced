http = require "http"
map = require "through2-map"
fs = require "fs"
server = http.createServer (req,res)->
  if req.method == "POST"
    res.writeHead 200, {"content-type": "text/plain"}
    req.pipe map (chunk)->
      chunk.toString().toUpperCase()
    .pipe res
server.listen process.argv[2]
  
