fs = require "fs"
fname =  process.argv[2]
fs.readFile fname, (err ,buf) ->
  console.log buf.toString().split("\n").length - 1
