#!/usr/bin/lua

--[[ Chapter 5 from Lua book
Functions
]]--

function maximum (a) 
    local mi = 1 -- index starts with 1 like in matlab
    local m = a[mi] -- max value
    for i=1, #a do
        if a[i] > m then 
            mi = i
            m = a[i]
        end
    end
    return m, mi
end

print(maximum({5, 32, 53, 3, 55, 8, 23}))


-- Variadic functions
-- A function can recieve a variable number of arguments
-- The three dots in the parameter list indicate that the
-- function is variadic
function add(...)
    local s = 0
    for i, v in ipairs{...} do 
        s = s + v
    end
    return s
end

print(add(3, 4, 10, 23, 12))





-- Named arguments
-- Parameter passing in Lua is positional.
