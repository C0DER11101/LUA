-- Functions in Lua
-- a. Creating functions
local function displayMsg(time)          -- a local function!! It is local to this file
	print("Hello for the "..time.." time.")
end

displayMsg(1)
displayMsg(2)
displayMsg(3)

-- default parameters
local function wave(wavExp)
	wavExp=wavExp or "Hello"    -- this is going to put the default text "Hello" into wavExp if no arguments are passed to wave() otherwise wavExp will store the value passed to wave() as argument
	--[[ if you write: 
	--wavExp="Hello" or wavExp then wavExp will always store "Hello" regardless of whether any argument was passed to wave() or not
]]
	print(wavExp)
end

wave()
wave("Hi!")
