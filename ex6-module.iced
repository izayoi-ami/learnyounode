module.exports = (dir, ext, f) ->
  fs = require "fs"
  path = require "path"
  await fs.readdir dir, defer err ,files
  return f err if err
  f null, (file for file in files when (path.extname file) == "." + ext)
