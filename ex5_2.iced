fs = require "fs"
path = require "path"
dirpath = process.argv[2]
extname =  "." + process.argv[3]
await fs.readdir dirpath, defer err ,files
console.log file for file in files when (path.extname file) == extname
  #console.log file, ((path.extname file) == ".iced") for file in files 
