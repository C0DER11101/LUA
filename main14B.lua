-- Co-routines
--[[
Co-routines are general control structures where flow control is co-operatively passed between two different routines without
returning.
]]

routine1=coroutine.create(             -- made global so that it can access itself when using coroutine.status()(if required)
function()
	print("In coroutine:")

	for i=1, 10 do
		print("[Routine-1]: "..i)
		
		if(i==5) then
			coroutine.yield()     -- stop routine1 when i becomes 5
		end
	end
end
)

local loop=function()
	for i=11, 20 do
		print("[Routine-2]: "..i)
	end
end

local routine2=coroutine.create(loop)

coroutine.resume(routine1)   -- starts routine1
coroutine.resume(routine2)   -- starts routine2; where routine1 stops, routine2 begins execution and it'll execute completely because there is no yield() function used in it!

if(coroutine.status(routine1) == "suspended") then    -- checks if routine1 has been suspended, if it is, then it is resumed
	coroutine.resume(routine1)   -- resumes routine1
end

print(coroutine.status(routine2))
print(coroutine.status(routine1))
