-- Co-routines
local routine1=coroutine.create(
function ()
	for i=1, 10 do
		print("Routine 1: "..i)
		
		if(i==5) then
			coroutine.yield()
		end
	end
end
)

local sampleRoutine=function()
	for i=11, 20 do
		print("Routine 2: "..i)
	end
end

local routine2=coroutine.create(sampleRoutine)

print(coroutine.status(routine1))
