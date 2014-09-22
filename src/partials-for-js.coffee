pushAll = (a, values) ->
 for v in values
  a.push v

createFunctionWrapper = (dis, f) ->
  values = []
  n = () ->
   pushAll values, arguments
   if values.length < f.length
    n.length = f.length - values.length
    console.log 'returning n'
    n
   else
    console.log 'applying original f'
    f.apply dis, values
  n()

createObjectWrapper = (dis, obj, args) ->
    newobj = {}
    for f of obj
        if typeof obj[f] == 'function'
            newobj[f] = () -> createFunctionWrapper dis, obj[f], arguments
        else
            newobj[f] = obj[f]
    newobj

module.exports = (x) -> 
    switch typeof x
        when 'object' then createObjectWrapper this, x
        when 'function' then createFunctionWrapper this, x
        else undefined
            