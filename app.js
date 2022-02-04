function sayHello() {
  var saySomething = function(something) {
    console.log(something);
    console.log(foo);
  }

  setTimeout(function() { saySomething("world") }, 1000);
}
