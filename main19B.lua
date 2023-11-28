-- A very simple example

local function addVectors(v1, v2)
	return {x=v1.x+v2.x, y=v1.y+v2.y};
end

-- vectors
local table1={x=10, y=20}
local table2={x=30, y=5}

local metatable={
	__add=addVectors,
	__sub=function(v1, v2)
		return {x=v1.x-v2.x, y=v1.y-v2.y};
	end
}

setmetatable(table1, metatable);

local result=table1+table2

print("Vector addition:");
print("(X,Y): ("..(result.x)..","..(result.y)..")");

result=table1-table2;

print("Vector subtraction:");
print("(X,Y): ("..(result.x)..","..(result.y)..")");
