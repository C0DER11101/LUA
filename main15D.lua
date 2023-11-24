-- reading from a file
local file=io.open("myFile", "r")  -- opening the file in read mode

local readContents=file:read("*all")  -- takes arguments like: "*number" or "*line" or "*all"

file:close()

print(readContents)
