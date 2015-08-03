http = require "http"
bl = require "bl"
buf = new bl()
await http.get process.argv[2] , defer res
res.pipe bl (err,data) ->
  return console.error err if (err)
  data=data.toString()
  console.log data.length
  console.log data
