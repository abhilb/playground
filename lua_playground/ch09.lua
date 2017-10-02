#!/usr/bin/lua


-- Coroutines
-- A coroutine is similar to a thread, it is a line of execution, with its
-- own stack, its own local variables and its own instruction pointer. It 
-- shares global variables.
--
-- Lua packs all its coroutine related functions in the coroutine table.
--


co = coroutine.create(function () print ("Hello World") end)
print(co)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))



-- yield function suspends the running coroutine function
-- and will continue on calling resume again.
co = coroutine.create(function() 
        for i=1, 10 do 
            print(i)
            coroutine.yield()
        end
    end)

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

