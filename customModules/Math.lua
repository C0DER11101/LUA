-- setting the table
Math={}


-- functions here must be global, otherwise you won't be able to use them in other files
function Math.add(x, y)           -- Math.add() is done because add(), by default, is not a part of the Math.lua module. Math.add() basically makes add() makes it a part of the Math.lua module
	return (x+y)
end

function Math.power(x, y)   -- x raised to the power of y
	return x^y  -- raise x to the power y
end


return Math
