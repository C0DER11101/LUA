-- Recursions
local function loop(start, stop)
	print(start)
	start=start+1
	if start > stop then
		return
	end

	loop(start, stop)
end

loop(1, 10)
print()
print()
loop(10, 15)

-- Anonymous functions(functions without a name)
local function Loop()
	local count=0

	return function()
		count=count+1

		return count
	end
end

print()
print(Loop())   -- will print the address of the function returned by Loop()

local f=Loop()
--[[
--this can be interpreted as:
	local f=function()
		count=count+1
		return count
	end

Now, it looks like the alternate way of defining a function

]]

print(f())   -- displays 1
print(f())   -- displays 2
print(f())   -- displays 3

--[[
--Note that when we write f(), it basically calls the 'sub-function' inside of Loop() and the local variable count is in Loop() and not in f(), so everytime count is updated, its value is updated and stored in the memory.
--When f() is called the second time, only the 'sub-function' executes, and so we get to continue from the last value of count
]]

print("\nFunctions with variable arguments")
-- Variable arguments
local function ADD(...)     -- ... represents that the function takes variable number of arguments, it is not an array by default
	local sums=0
	print("Type of ... is: "..type(...))    -- type of ... is 'number'
	print("Length of ... is: "..#{...})     -- converting ... to an array/table and showing its length

	args={...}   -- assigning those arguments to args after converting them to table

	for i=1, #args do
		sums=sums+args[i]
	end

	--[[ Alternately, you can also do this,
	--for key, value in pairs({...}) do           converts ... to an array, then pairs each element with some key and loops through them
	--	sums=sums+value
	--end
	]]

	return sums
end

print("Sum of 10 and 5 is: "..ADD(10, 5))
print("Sum of 12, 200 and 450 is: "..ADD(12, 200, 450))
