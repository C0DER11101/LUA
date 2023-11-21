local str="Hello world"   -- the string can alo be within single quotes

print("String = "..str)

print("Type = "..type(str))

print("Length of the string = "..#str)

local length=#"Hello world"   -- not the string, but its length is assigned to length

print("Length: "..length)

print(#"Hello")      -- display the length of "Hello"

-- converting a number to a string

local x=100
print("type(x): "..type(x))

local y=tostring(x)
print("type(y): "..type(y))

-- escape characters
print("Hello\nWorld\n\"Lua\"")    -- escape characters are same as those in C/C++
