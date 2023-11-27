-- simple simulation of classes and objects

local function Pet(name)
	return {
		name=name or "Dogday",
		status="hungry",
		feed=function (self)    -- self is like this in C++, it can be used to access the entries in this table
			print("\nFeeding "..self.name.."...")
			for i=1, 1000000000 do
				;
			end

			self.status="full"
			print("\n"..self.name.." has been fed")
		end
	}
end

local cat=Pet("Catnap")

print("Cat name: "..cat.name)
print("Cat status: "..cat.status)
cat:feed()         -- calling the function feed()[Notice the use of : and not .]
print("Cat status: "..cat.status)

local dog=Pet()
print("\nDog name: "..dog.name)
print("Dog status: "..dog.status)
dog:feed()
print("Dog status: "..dog.status)
