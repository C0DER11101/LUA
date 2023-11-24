-- opening a file

local file=io.open("myFile", "w")   -- like open() in C/C++, file is like, if I talk from C point of view, a file pointer now

--[[ various modes of opening a file:
1. "r" -> read mode.
2. "w" -> write mode.
3. "a" -> append mode.
4. "r+" -> update mode; all previous data is preserved.
5. "w+" -> update mode; all previous data is erased.
6. "a+" -> append update mode, previous data is preserved, writing is only allowed at the end of file.
7. "rb" -> read binary mode.
8. "wb" -> write binary mode.
9. "ab" -> append binary mode.
10. "r+b" -> update binary mode; all previous data is preserved.
11. "w+b" -> update binary mode; all previous data is erased.
12. "a+b" -> append update binary mode; previous data is preserved, writing is only allowed at the end of file.
]]

file:write("This file is opened using io.open()\nGood luck with file handling.\n")

file:close()


-- appending to a file

local file=io.open("myFile", "a")

file:write("\nAppended text.\n")

file:close()
