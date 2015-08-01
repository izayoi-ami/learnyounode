fs = require "fs"
fname =  process.argv[2]
buf = fs.readFileSync fname
console.log buf.toString().split("\n").length
