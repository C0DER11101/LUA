-- file 2

--[[
nil
]]


-- creating a variable:

local a

print(a)      -- will print nil, because a was not initialized

local b=10    -- initializing a variable

print(b)
print(b*2)

-- assigning strings

local word="Lazy"

print("The word "..word.." sucks")

word=nil      -- deleting the variable word

print(word)

-- adding two strings together

local name="Priyanuj"
local surname="Bora"

print(name.." "..surname)

-- alternate version for the above strings

local fullName="Priyanuj".." Bora"

print(fullName)

-- multi-line strings

local strings= [[
This is Priyanuj Bora
Hello world
	This tab will be printed in the output
]]

print(strings)


-- booleans(simple ones)

local no=false                 -- these two are the same
local NO=nil

print(no)
print(NO)
