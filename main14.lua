-- Co-routines
--[[
Co-routines are general control structures where flow control is co-operatively passed between two different routines without
returning.
]]

routine1=coroutine.create(
function()
	print("In coroutine:")

	for i=1, 10 do
		print(coroutine.status(routine1))
		print("[Routine-1]: "..i)
		
		if(i==5) then
			coroutine.yield()
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
print(coroutine.status(routine1))   -- getting the status of the coroutine
coroutine.resume(routine1)   -- resume executing routine1
print(coroutine.status(routine1))
