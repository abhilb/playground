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



-- non global functions

Lib = {}
Lib.foo = function (a,b) return a + b end
Lib.goo = function (a,b) return a - b end
print(Lib.foo(2,3), Lib.goo(2,3))

-- yet another way to do the same
function Lib.f (a,b) return a + b end
function Lib.g (a,b) return a - b end
print(Lib.f(2,3), Lib.g(2,3))


-- Tail recursion
function foo (n)
    print(n)
    if (n > 0) then return foo(n-1) end
end

print(foo(5))





---------------
-- Factorial using tail recursion
print("Factorial using tail recursion")
function fact(n, result)
    if (n > 0) then return fact(n-1, result*n) end
    return result
end

function factorial(n)
    local result = fact(n, 1)
    return result
end

print(factorial(15))




