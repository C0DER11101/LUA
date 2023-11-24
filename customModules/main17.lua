-- creating custom modules
-- a module is a lua file that returns a single table when called
-- a package is a collection of modules

local loadModule=require("Math")  -- imports Math.lua into this file

print(loadModule.add(10, 20))

print(loadModule.power(4, 5))
