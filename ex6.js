// Generated by IcedCoffeeScript 1.8.0-e
(function() {
  var dir, err, ext, file, iced, list, ls, __iced_deferrals, __iced_k, __iced_k_noop;

  iced = require('iced-runtime');
  __iced_k = __iced_k_noop = function() {};

  ls = require("./solution_filter.js");

  dir = process.argv[2];

  ext = process.argv[3];

  (function(_this) {
    return (function(__iced_k) {
      __iced_deferrals = new iced.Deferrals(__iced_k, {
        filename: "/home/wukc/learnyounode/ex6.iced"
      });
      ls(dir, ext, __iced_deferrals.defer({
        assign_fn: (function() {
          return function() {
            err = arguments[0];
            return list = arguments[1];
          };
        })(),
        lineno: 4
      }));
      __iced_deferrals._fulfill();
    });
  })(this)((function(_this) {
    return function() {
      var _i, _len, _results;
      if (err) {
        console.error("There was an error" + err);
      }
      _results = [];
      for (_i = 0, _len = list.length; _i < _len; _i++) {
        file = list[_i];
        _results.push(console.log(file));
      }
      return _results;
    };
  })(this));

}).call(this);