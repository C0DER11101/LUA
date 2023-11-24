-- OS module
print(os.time())   -- time since 1970

-- printing the time passed from 1970 till the year 2000 and the given parameters(month, day, hour, min, sec)
print(os.time({
	year=2000,
	month=10,
	day=1,
	hour=13,
	min=20,
	sec=10
}))

-- getting the current date
print(os.date())

-- getting environment variables
print(os.getenv("HOME"))
print(os.getenv("USER"))

-- renaming a file
os.rename("temp.txt", "TempFile.c")   -- rename temp.txt to TempFile.c(notice that we can also change the extension)

-- removing a file
os.remove("TempFile.c")

-- executing terminal commands
os.execute("ls")

-- finding out how much time my code took to execute
local start=os.clock()

for i=1, 10 do
	;
end

print(os.clock()-start)

-- exiting the program
for i=1, 10 do
	print("i = "..i)
	if(i==5) then
		os.exit()
	end
end
