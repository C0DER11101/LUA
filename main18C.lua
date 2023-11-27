-- inheritance in lua
local function Pet(name)
	return {
		name=name or "Dogday",
		status="hungry",
		feed=function (self)
			print("\nFeeding "..self.name.."...")
			for i=1, 1000000000 do
				;
			end

			self.status="full"
			print("\n"..self.name.." has been fed")

			self.status="full"
			print("\n"..self.name.." has been fed")
		end
	}
end

local function Dog(name, breed)
	local dog=Pet(name);

	-- these are just some basic operations(adding elements to the table) just lke I did in t1.lua(search for it in this repo).
	--[[ Since it's just adding elements to the table 'dog', it will look more like this:
	{
		....previous elements...
		breed=breed,
		loyalty=0,
		isLoyal=function(self)
			return self.loyalty >= 10;
		end
	}

	]]

	dog.breed=breed;

	dog.loyalty=0;

	dog.isLoyal=function(self)
		return self.loyalty >= 10; -- basically returns a boolean
	end

	return dog;
end

local Bronze=Dog("Bronze", "Pooddle");

if(Bronze:isLoyal()) then
	print(Bronze.name.." is loyal.");
else
	print(Bronze.name.." is not loyal yet.");
end
