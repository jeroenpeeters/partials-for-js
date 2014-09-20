partial = require '../src/partials-for-js'

f1 = (a, b, c) ->
    a + b + c
    
add = partial (x, y) -> x + y

describe 'Partial function application', ->
    it 'creates a partial function', ->
        p = partial f1
        
        expect(p == f1).toBe false
        expect(typeof p).toBe 'function'
    
    it 'when called with insuficient parameters, returns a partial function', ->
        p = partial f1
        p1 = p 1
        p2 = p1 2
        v = p2 3
        
        expect(typeof p1).toBe 'function'
        expect(typeof p2).toBe 'function'
        expect(typeof v).toBe 'number'
        expect(v).toBe 6
        
    it 'add', ->
        add5 = add 5
        
        expect(add5 1).toBe 6