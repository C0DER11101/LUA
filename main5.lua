-- random numbers

print(math.random())      -- gives random values between 0 and 1

--[[
--if you are getting the same number everytime you are using math.random(), then you will need to seed it as:
--math.randomseed()
]]

math.randomseed(os.time())   -- os.time() returns the current time

print(math.random())

print(os.time())


-- printing random values between 1 and 10(both inclusive)
print(math.random(10))

-- printing values between 10 and 50(both inclusive)
print(math.random(10,50))
