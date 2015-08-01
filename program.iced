http = require "http"
bl = require "bl"
buf = new bl()
urls = (process.argv[k] for k in [2..])
res = []
str = []
await
  for url,i in urls
    http.get url , defer res[i]
await
  for r,i in res
      r.pipe bl (err,data) ->
        return console.error(err) if (err)
        str.push data.toString()
        console.log str
        defer()
console.log str

