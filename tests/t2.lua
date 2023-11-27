-- more on table

local table={name="table1", length="unknown", tableNum=1}

for _, values in pairs(table) do
	print(values);
end

table.dateCreated="27-11-2023";   -- adding a new item to the table

print(); -- prints a newline

for _, values in pairs(table) do
	print(values);
end

table.isLocal=true;    -- adding another item to the table

print(); -- prints a newline

for _, values in pairs(table) do
	print(values);
end
