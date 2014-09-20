partials-for-js
===============

Implements support for partial function application in JavaScript.

Example
-------

written in [CoffeeScript](http://coffeescript.org/)

```coffeescript
partial = require 'partials-for-js'

add = partial (x, y) -> x + y
addFive = add 5

result = addFive 10
# result now holds value 15
```

