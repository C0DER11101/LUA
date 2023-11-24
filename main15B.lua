-- Working with files

-- reading from the file

io.input("myFile.txt")   -- we are going to read from the file

local contents=io.read(5)  -- reads 5 bytes(characters)

io.close()

print(contents)

io.input("myFile.txt")

contents=io.read(100)     -- reads all the characters from the file

io.close()

print(contents)

-- reading a number from the file
io.input("numbers.txt")

number=io.read("*number")    -- reads a number(if that's what is the first thing, if there's a string before the number then number will store nil i.e. it won't be able to read a number)

io.close()

print(number*2)  -- the read number can be used for arithmetic operations

-- reading a line
io.input("myFile.txt")

line=io.read("*line")    -- read only one line, if there's another line but in the next line, then it won't read it

io.close()

print(line)

-- reading a line
print("\nReading from a file line-by-line")
io.input("myFile.txt")

print(io.read("*line"))
print(io.read("*line"))

io.close()


-- reading the entire file
print("\n\nReading the entire file")

io.input("myFile.txt")

local fileContent=io.read("*all")

io.close()

print(fileContent)
