load 'animal.rb'
class Client 

attr_accessor :name, :num_children, :age, :gender, :pets

def initialize(name, age, gender, num_children)
	@name = name 
	@num_children = num_children
	@age = age
	@gender = gender
	@pets = {}
	#all done
	##@num_pets = @pets.length
end

def num_pets
	@pets.length
end

def to_s

"#{name} is a #{age} year old #{gender} with #{num_children} kids and #{num_pets} pets"
#rspec required female in the sentence even thought it was never specified
end

def display_pets
	pets_arr = []
	@pets.each { |key, value|
	 pets_arr << "#{value.name} is a #{value.age} year old #{value.gender} #{value.species} that loves "
	}
	pets_str = pets_arr.join("\n")
	#this is almost correct not sure about the \n
end

end

# client = Client.new('Beth', 30, 'female', 3)
# tiny = Animal.new("Tiny", 3, "male", "cat")
# franz = Animal.new("Franz", 5, "male", "cat")
# client.pets[tiny.name.to_sym] = tiny
# client.pets[franz.name.to_sym] = franz
# client.display_pets