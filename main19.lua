-- Metamethods

local function addTables(x, y)
	return x.num+y.num;
end

local table1={num=100};
local table2={num=20};

-- lua doesn't allow adding of tables
-- for that we will use meta-table

local metatable={   -- __add means the '+' symbol
	-- addTables is a metamethod
	__add=addTables,   -- we are just saying that the '+' symbol should call the method addTables when we are adding the tables
	__sub=function(x, y)     -- __sub means the '-' symbol and we are specifying what it should do when we write table1-table2
		return x.num-y.num;
	end
}

setmetatable(table1, metatable);   -- we are saying that whenever we perform + or - operation that includes table1 then we will use the metatable's elements

-- That is
local result=table1+table2;     -- calls addTables(table1, table2)
print("Sum: "..result);

-- Subtraction
result=table1-table2;    -- again __sub=function(table1, table2) is going get executed
print("Difference: "..result);

--[[ list of the operations:

1. __add  -> +
2. __sub  -> -
3. __mul  -> *
4  __div  -> /
5. __mod  -> %
6. __pow  -> ^
7. __concat  -> ..
8. __len  -> #
9. __eq  -> ==
10. __lt  -> <
11. __le  -> <=
12. __gt  -> >
13. __ge  -> >=

]]
