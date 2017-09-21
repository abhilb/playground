#!/usr/bin/env lua

-- This is a comment


--[[ This is a block comment in lua. 
i.e. a multi line comment
--]]


print(10)


-- Global variables don't need declarations simply use them
-- They will carry the value nil

print(b) -- will print nil
b = 10
print(b) -- will print 10



-- The arguments to the script are stored in the global 
-- variable args and can be accessed like below
print(arg[0])

