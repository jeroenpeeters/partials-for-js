partials-for-js
===============

Implements support for partial function application in JavaScript.

What are partial functions?
---------------------------

Many programming languages are only able to call a function with the same amount of parameters as the function has been defined with.
Partial function application makes it possible to call a function with fewer parameters than it has defined. This call will result in a partially applied function.
The partially applied function accepts the remaining parameters. When no parameters remain, the original function implementation is called.

The example below demonstrates this concept:

```coffeescript
# let f be a function that accepts three parameters and returns their cummulative value
f = (a, b, c) -> a + b + c

# let f1 be a function that accepts partial application for function f
f1 = partial f

# let ff1 be f1 to which one value has been applied
ff1 = f1 5

# ff1 is now a function of the form f(b, c), the two remaining parameters
ff2 = ff1 10

# ff2 is now a function of the form f(c)
result = ff2 20

# all parameters are collected and the original function f is called. result now holds value 35.
```

In this example all parameters are applied one-by-one. It is however possible to apply more parameters at once.

Partials-for-js implements a function wrapper that collects all parameters of the original function. When all parameters are collected, the original function is called.

Examples
--------

in [CoffeeScript](http://coffeescript.org/)

```coffeescript
partial = require 'partials-for-js'

add = partial (x, y) -> x + y
addFive = add 5

result = addFive 10
# result now holds value 15
result = addFive 8
# result now holds value 13
```

in plain JavaScript

```javascript
var partial = require('partials-for-js');

var add = partial(function(x, y) {
  return x + y;
});

var addFive = add(5);

var result = addFive(10);
// result now holds value 15
var result = addFive(8);
// result now holds value 13
```

When to use partial functions
-----------------------------

TBD

How to install
--------------

TBD