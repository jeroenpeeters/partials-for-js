partials-for-js
===============

Implements support for partial function application in JavaScript.

Example
-------

```coffeescript
require 'partials-for-js'

add = partial (x, y) -> x + y
addFive = add 5

result = addFive 10
# result now holds value 15
```