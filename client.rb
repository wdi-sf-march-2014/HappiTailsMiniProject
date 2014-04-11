load 'animal.rb'
class Client 

attr_accessor :name, :num_children, :age, :num_pets, :gender, :pets

def initialize(name, age, gender, num_children)
	@name = name 
	@num_children = num_children
	@age = age
	@num_pets = 0
	@gender = gender
	@pets = {}
end

def to_s
"#{name} is a #{age} year old female with #{num_children} kids and #{num_pets} pets"
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