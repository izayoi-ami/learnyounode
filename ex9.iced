http = require "http"
bl = require "bl"
buf = new bl()
urls = (arg for arg,i in process.argv when i>1)
res = []
err = []
data = []
str = ("" for i in urls)
await
  for url,i in urls
    http.get url , defer res[i]
await
  for r,i in res
    r.pipe bl defer err[i],data[i]

for k in [0..2]
  console.log data[k].toString()
