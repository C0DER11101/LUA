-- loops

-- 1. The for loop

print("normal for")
-- print numbers from 1 to 10
for i=1, 10 do
	print(i)
end

print("\nfor with step")

-- print numbers from 1 to 10 by increasing it by 1 step
for i=1, 10, 1 do
	print(i)
end

print("\nfor with step")
-- print numbers from 1 to 10 by increasing it by 2 steps
for i=1, 10, 2 do
	print(i)
end

print("\nreverse for")
-- reversing a for loop
-- print numbers from 10 to 1 by reducing it by 1 step
for i=10, 1, -1 do
	print(i)
end

print("\nreverse for")
-- print numbers from 10 to 1 by reducing it by 2 steps
for i=10, 1, -2 do
	print(i)
end

-- assigning values to variables in one line:

local Start, End, Step=1, 10, 1    -- assigning 1 to Start, 10 to End and 1 Step

print("\nfor using variables")
for i=Start, End, Step do
	print(i)
end

-- defining an array
local array={1, 2, 3, 4}

print("\nPrinting the elements of the array: ")
print("type(array): "..type(array))   -- displays type of array as 'table'
for i=1, #array, 1 do               -- #array gives the length of the array(array indices start at 1!!!!)
	print(array[i])
end

print("\nPrinting using while loop")
-- 2. The while loop
local cookies_in_jar=10

while cookies_in_jar > 0 do
	print("Cookies left in the jar: "..cookies_in_jar)
	cookies_in_jar=cookies_in_jar-1
end

print("\nPrinting using repeat..until loop")
-- 3. repeat..until loop(it is similar the do..while loop in C/C++)
cookies_in_jar=10
repeat
	print("Cookies left: "..cookies_in_jar)
	cookies_in_jar=cookies_in_jar-1
until cookies_in_jar==0

repeat
	print("Hello")    -- will get printed once
until true
