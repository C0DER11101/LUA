-- if-else statements

if nil then
	print("Statement is true")
end


--[[
-- comparision operators:
-- 1. >
-- 2. <
-- 3. >=
-- 4. <=
-- 5. ~=     This operator is the "not equal to" operator(in C/C++, it is !=)
-- 6. ==     This operator is the "equal to" operator(just like C/C++)
]]

-- a very simple if-else

local age=35

if age >= 25 and age < 60 then
	print("Just testing")
else
	print("just Testing")
end

--[[
--and, or are just like && and || in C/C++
]]

age=30

if age ~= 20 then
	print("Enter")
end

local name="Priyanuj"

if name == "Priyanuj" then                  -- comparision between strings
	print("Hello "..name)
end

if not (age < 20) then      -- not basically inverts the result
	print("Enter")
end

print(not true)   -- prints false

age=20

if age > 20 then
	print("Age1: "..age)
elseif age > 10 then
	print("Age2: "..age)
else
	print("Age3: "..age)
end
