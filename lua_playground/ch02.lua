#!/usr/bin/env lua


-- Chapter 02 Types and values


-- There are basically 8 types in lua
-- ni
-- boolean
-- number
-- string
-- userdata
-- thread
-- function
-- table
--
-- One can find the type of the value
-- using the type keyword.

print(type("Abhilash")) -- string
print(type(10.2))       -- number
print(type(print))      -- function
print(type(true))       -- boolean
print(type(nil))        -- nil


-- We can use nil to delete a global variable
--
--
-- Booleans - false and true
-- Numbers - Lua has no integer type.. All numbers are represented as double precision floating point numbers.
--
