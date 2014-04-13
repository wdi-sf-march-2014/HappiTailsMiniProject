class Client 
	attr_accessor :name, :age, :gender, :num_pets, :pets, :animals

	def initialize(name, age, gender, num_pets)
		@name = name
		@age = age
		@gender = gender
		@num_pets = num_pets
		@pets = {}
		@animals = {}
	end

	def to_s
		"#{@name} is a #{@age} year old #{@gender} with #{@num_pets} pets"
	end
	
	def display_pets
		pets = ""
		@pets.each do |k, v|
			pets += (v.to_s + "\n")
		end
		return pets.chomp
	end	

	# def add_animal(animal)
	# 	@animals[animal.name] = animal
	# 					#fluffy		{age, name, gender, species}
	# end

	# def delete_animal(animal)
	# 	@animals[animal.name] = animal
	# end

end


