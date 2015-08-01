ls = require "./solution_filter.js"
dir = process.argv[2]
ext = process.argv[3]

await ls dir, ext, defer err, list
console.error "There was an error" + err if err
console.log file for file in list


