pushAll = (a, values) ->
 for v in values
  a.push v

createWrapper = (dis, f, args) ->
  values = []
  n = () ->
   pushAll values, arguments
   if values.length < f.length
    n.length = f.length - values.length
    n
   else
    f.apply dis, values
  n.apply null, args

#for f of obj
# if typeof obj[f] == 'function'
#   objf = obj[f]
#   obj[f] = () -> createWrapper this, objf, arguments

module.exports = (f) -> () -> createWrapper this, f, arguments