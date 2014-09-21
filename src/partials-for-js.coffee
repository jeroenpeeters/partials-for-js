pushAll = (a, values) ->
 for v in values
  a.push v

createFunctionWrapper = (dis, f, args) ->
  values = []
  n = () ->
   pushAll values, arguments
   if values.length < f.length
    n.length = f.length - values.length
    n
   else
    f.apply dis, values
  n.apply null, args

createObjectWrapper = (dis, obj, args)
    for f of obj
        if typeof obj[f] == 'function'
            objf = obj[f]
            obj[f] = () -> createFunctionWrapper dis, objf, arguments

module.exports = (x) -> () -> 
    switch typeof x
        when 'object' then createObjectWrapper this, x, arguments
        when 'function' then createFunctionWrapper this, x, arguments
        else undefined