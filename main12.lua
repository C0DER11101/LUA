-- Tables(or arrays or lists)

local array={10, 15, 20}   -- this is a table/array/list containing numbers

print(array)   -- this will not show the contents of the array rather its address in the memory

-- accessing individual elements of the array(indices in tables start from 1)
print(array[1])   -- accessing is just like in C/C++
print(array[2])
print(array[3])

-- Tables can have a mixture of different types of elements
local array2={10, true, "Hello world", false, 3.14}

-- getting the length of the array
print("Length(array): "..#array.."\nLength(array2): "..#array2)

local array3={10, 15, 20, 1, 2, 3, 6, 5}

-- sorting array elements and looping through them
print("\nArray elements before sorting:")
for i=1, #array3 do
	print(array3[i])
end

table.sort(array3)

print("\nArray elements after sorting:")
for i=1, #array3 do
	print(array3[i])
end

-- inserting elements into the table/array

table.insert(array3, 2, "hi")   -- insert "hi" at index 2 of array3
print("\nArray after inserting a new element into it:")
for i=1, #array3, 1 do
	print(array3[i])
end

-- removing elements from the table/array

table.remove(array3, 3)  -- remove the element at index 3 of array3

print("\nArray after removing an element from it:")
for i=1, #array3, 1 do
	print(array3[i])
end

-- concatenating in tables/arrays
print("\nConcatenating in arrays:")
local strings={"hello", "world", "This is", "Lua"}

print(table.concat(strings, " "))  -- take every element in the array and put them into a string separated by a whitespace

print(table.concat(strings, "-"))  -- take every element in the array and put them into a string separated by a hyphen


-- multi-dimensional table(basically, a table inside of a table)
print("\nMulti-dimensional table")
local multArr={             -- the way of defining is similar to that of 2D arrays in C/C++
	{1, 2, 3},
	{4, 5, 6},
	{7, 8, 9},
	{10, 11, 12}
}

print(multArr)   -- gives the address of multArr
print(multArr[1])  -- gives the address of the first 1D array inside multArr
print(multArr[2])  -- gives the address of the second 1D array inside multArr
print(multArr[3])  -- gives the address of the third 1D array inside multArr

-- Accessing elements of a multi-dimensional table(similar to accessing elements of a 2D array in C/C++)
print("Very first element in multArr: "..multArr[1][1])  -- displays 1 because its position is (1, 1) i.e 1st row and 1st column
print("Element in second row and first column: "..multArr[2][1])
print(#multArr)   -- #multArr returns the number of 1d arrays in multArr
print(#multArr[1])  -- #multArr[1] returns the number of elements in the first 1d array in multArr

-- printing the whole 2d array
print("\nThe whole 2d array:")

for i=1, #multArr do
	for j=1, #multArr[i] do
		io.write(multArr[i][j].." ")
	end
	print()
end
