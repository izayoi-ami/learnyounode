// Generated by IcedCoffeeScript 1.8.0-e
(function() {
  var bl, buf, http, iced, res, __iced_deferrals, __iced_k, __iced_k_noop;

  iced = require('iced-runtime');
  __iced_k = __iced_k_noop = function() {};

  http = require("http");

  bl = require("bl");

  buf = new bl();

  (function(_this) {
    return (function(__iced_k) {
      __iced_deferrals = new iced.Deferrals(__iced_k, {
        filename: "/home/wukc/learnyounode/ex8_alternative.iced"
      });
      http.get(process.argv[2], __iced_deferrals.defer({
        assign_fn: (function() {
          return function() {
            return res = arguments[0];
          };
        })(),
        lineno: 3
      }));
      __iced_deferrals._fulfill();
    });
  })(this)((function(_this) {
    return function() {
      return res.pipe(bl(function(err, data) {
        if (err) {
          return console.error(err);
        }
        data = data.toString();
        console.log(data.length);
        return console.log(data);
      }));
    };
  })(this));

}).call(this);
