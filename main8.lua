-- calling the string library

local str="Hello World"

print(string.lower(str))    -- converts all the characters of the string str to lower case

print(string.upper(str))    -- does the opposite of what lower() does

print(string.len(str))      -- a substitute of # operator

print(string.sub(str, 1, 5))   -- sub() returns the string in str that starts at index 1 and goes all the way till 5

print(string.char(65))      -- printing the character whose ascii value is 65

print(string.byte("a"))    -- printing the ascii value of the character

print(string.byte(str, 1, 100))    -- printing the ascii value of each character in the string str, put those indices otherwise it will only print the ascii value of 'H' in str; again 99 is just a number I chose, since I am using the whole string, only the starting index matters, the last index can be anythin, by default the entire string will be chosen

print(string.byte(str, 1, 5))    -- here, I am only displaying the ascii value of the characters in "Hello" in str


print(string.rep("Hello! ", 5))   -- I want "Hello! " to repeat 5 times

print(string.rep("Hello!", 5, " "))  -- I want "Hello!" to repeat 5 times separated by a whitespace


print(string.format("pi: %.2f Year: %i", math.pi, 2023))   -- formatting the string(similar to formatting in C)

print(string.find(str, "Wor"))    -- finding a substring in str, returns the indices between which "Wor" exists

print(string.find(str, "ed"))     -- "ed" is not in str, returns nil

print(string.match(str,"Wor"))    -- returns "Wor" if it finds "Wor" in str, otherwise returns nil

print(string.match(str, "Wrld"))  -- "Wrld" is not in str, returns nil

local begin, ending=string.find(str, "Wor")    -- the two indices returned are stored in two variables(one in each)

print("Begin: "..begin.." End: "..ending)

print(string.gsub(str, "o", "!"))     -- replace every "o" in str by a "!" and this function also returns the number of characters that were replaced
