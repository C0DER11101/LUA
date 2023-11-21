-- Getting input from the user

-- you have to enter the input in the next line, after the contents of the print statement are printed
print("Enter something: ")
local userInput=io.read()    -- by default, it treats input as a string
print("User entered: "..userInput)

-- you are prompted to provide your input in the same line where the contents of the print statement are printed
io.write("Enter something again: ")
userInput=io.read()
print("User entered: "..userInput)

-- A guessing game

local number

print("\nTry your luck and guess the number between 1 and 10!!")

local randNum=math.random(1, 10)

maxAttempts=10

local attempts=0

repeat
	print("\nAttempts left "..maxAttempts-attempts)

	io.write("Enter number: ")
	number=io.read()
	number=tonumber(number)

	if number == randNum then
		print("Hurray!! You guessed it right!")
		attempts=maxAttempts+1
	elseif number > randNum then
		print("Your number is greater than the actual number")
	elseif number < randNum then
		print("Your number is smaller than the actual number")
	end

	attempts=attempts+1

until attempts > maxAttempts
