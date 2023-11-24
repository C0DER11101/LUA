-- Working with files

-- create a fil
io.output("myFile.txt")          -- this function creates a file and if the file already exists, it is going to empty the file

-- writing to the file
io.write("Hello! File handling in LUA\n")   -- write to myFile.txt

io.close()   -- close the file
