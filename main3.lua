-- scopes

local a=10       -- local scope variable

c=100            -- global scope variable

print(a.." "..c)

_G.globalVar=1000    -- another way of defining a global scope variable

print("a = "..a.." c = "..c.." globalVar = "..globalVar)

-- Viewing the type of a variable

print("type(a) = "..type(a))

print("type(c) = "..type(c))

print("type(globalVar) = "..type(globalVar))
