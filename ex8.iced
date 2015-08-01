http = require "http"
bl = require "bl"
buf = new bl()
await http.get process.argv[2] , defer res
res.setEncoding "utf8"
res.on "data", (data)->
  buf.append(data)
res.on "error", console.error
res.on "end", (end) ->
  console.log buf.length
  console.log buf.toString()
