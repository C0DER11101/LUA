-- Functions continued....
local function add(num1, num2)
	num1=num1 or 0
	num2=num2 or 0

	return (num1+num2)
end

local result=add(1, 2)
print("Result for add(1, 2): "..result)

result=add()
print("Result for add(): "..result)

-- another way of creating a function
local mult10=function (num1)     -- the name of the function is mult10
	return num1*10
end

print(mult10(12))  -- displays 120


-- function returning more than one values

function sub10(number)
	local res=number-10
	return number, res   -- returning two values
end

number, result=sub10(35)

print("Number: "..number.." Result of sub10("..number.."): "..result)
