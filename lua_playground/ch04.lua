#!/usr/bin/lua


-- Chapter 4 (Programming in Lua 3rd Edition) Statements


-- Numerical for loop
-- for var = exp1, exp2, exp3 do
--      <something>
-- end

for i=1, 10 do print (i) end

for i=-10, 10 do print(i) end

-- [[ When you need the control variable after the loop
-- like when you break the loop then probably the best way
-- is to copy the value into another variable as shown below
-- ]]
print("break and for loop")
a = {}
local found = nil
for j=1,5 do a[j] = j end

for k=1,5 do 
    if a[k] > 3 then 
        found = 1
        break
    end
end
print(found)


-- Generic for loop
-- The generic for loop traverses all the values returned by an iterator
-- function
-- for k,v in pairs(t) do print(k,v) end

days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
revDays = {}
for k,v in pairs(days) do 
    print(k, v)
    revDays[v] = k
end
print(revDays.Monday) -- prints 2

