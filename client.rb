class Client < Animal
	attr_accessor :name, :num_children, :age, :pets, :age

	def initialize(name, age, gender, num_children)
		@name = name
		@age = age
		@gender = gender
		@num_children = num_children
		@pets = {}
	end


	def to_s
		"#{@name} is a #{@age} year old female with #{@num_children} kids and #{@pets.length} pets"
	end

	def display_pets
		pets = ""
		 @pets.each do |k, v|
		 	pets += (v.to_s + "\n")
		end
		return pets.chomp()
	end
end

