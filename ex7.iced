http = require "http"
await http.get process.argv[2] , defer res
res.setEncoding "utf8"
res.on "data", console.log
res.on "error", console.error
  
