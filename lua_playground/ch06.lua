#! /usr/bin/lua

--[[ More about functions

1. Anonymous functions
2. Closures
3. Lexical scopes
etc...

]]--


-- non local variables or some times called upvalues in Lua

function newCounter() 
    local i = 0
    return function ()
        i = i + 1
        return i
    end
end

c1 = newCounter()
print(c1())
print(c1())

