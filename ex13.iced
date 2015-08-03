http = require "http"
map = require "through2-map"
fs = require "fs"
server = http.createServer (req,res)->
  if req.method == "GET"
    data = require("url").parse req.url, true
    date = new Date data["query"]["iso"]
    time = date.getTime()
    hash = {}
    switch data["pathname"]
      when "/api/parsetime"
        hash =
          hour: date.getHours()
          minute: date.getMinutes()
          second: date.getSeconds()
      when "/api/unixtime"
        hash =
          unixtime: date.getTime()
    res.writeHead 200, {"content-type": "application/json"}
    res.end JSON.stringify hash
server.listen process.argv[2]
    
