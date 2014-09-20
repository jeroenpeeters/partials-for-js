partials-for-js
===============

Implements support for partial function application in JavaScript.

Example
-------

in [CoffeeScript](http://coffeescript.org/)

```coffeescript
partial = require 'partials-for-js'

add = partial (x, y) -> x + y
addFive = add 5

result = addFive 10
# result now holds value 15
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
```

When to use partial functions
-----------------------------

TBD

How to install
--------------

TBD