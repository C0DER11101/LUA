local person={name="John", age=16}

print(#person)   -- doesn't really show the length of the table 'person'; only shows 0

print("Person-1: "..person.name)

print("Person-1: "..person.age);

person.bod="19-02-2023"    -- adding a new element to the table

print("Person-1: "..person.bod)

local person2=person;    -- assigning one table to another(the other one is not exactly a table, rather, a variable)

print("Person-2: "..person2.bod);

print("Person-2: "..person2.name);

print("Person-2: "..person2.age);
