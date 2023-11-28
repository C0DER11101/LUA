-- A simple pet game

local userInput, petName, petBreed, petFood;

local function Pet(name)

	return {
		name=name or "Pudding",
		status="hungry",
		isFed=false,
		timeForFood=0,
		feed=function(self)
			if(self.isFed) then
				print(self.name.." is fed.");
				if(self.timeForFood>0) then
					self.timeForFood=self.timeForFood-1;
					self.status="hungry";
				elseif(self.timeForFood==0) then
					self.isFed=false;
				end

			else
				print("Feeding.....");
				for i=0, 10000000 do
					;
				end
				print("Feeding complete!!");
				self.status="full";
				self.isFed=true;
				self.timeForFood=10;
			end
		end
	}
end


local function Dog(name, breed)
	local dog=Pet(name);

	dog.breed=breed;

	dog.loyalty=0;

	dog.isLoyal=function(self)
		return self.loyalty >= 10;
	end

	-- function overriding
	dog.feed=function(self)
		self.status="Full";
		self.loyalty=self.loyalty+5;
	end

	return dog;
end

local function Cat(name, breed)
	local cat=Pet(name);

	cat.breed=breed;

	cat.purr=0;

	return cat;
end

print("Please choose any one: ");


local dog;
local cat;

while(true) do
	if(tonumber(userInput) ~= 1 and tonumber(userInput) ~= 2) then
		repeat
			print("1. Cat.");
			print("2. Dog.");
			io.write("> ");
			userInput=io.read();

			if(tonumber(userInput)==1) then
				io.write("Enter name of the cat: ");
				petName=io.read();
				io.write("What breed is your cat? ");
				petBreed=io.read();
				dog=Dog(petName, petBreed);
			elseif(tonumber(userInput)==2) then
				io.write("Enter name of the dog: ");
				petName=io.read();
				io.write("What breed is your dog? ");
				petBreed=io.read();
				cat=Cat(petName, petBreed);
			else
				print("Invalid option");
			end
		until(tonumber(userInput)==1 or tonumber(userInput)==2);
	end

	repeat
		io.write("Press \"f\" or \"F\" to feed your pet!");
		petFood=io.read();
	until(petFood=='F' or petFood=='f');

	if(tonumber(userInput)==1) then
		dog:feed();
	else
		cat:feed();
	end
end
