(function() {

  (function() {
    return console.log('script1 ');
  });

}).call(this);

(function() {

  (function() {
    return console.log('coffee2');
  });

}).call(this);
