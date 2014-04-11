class Client < Animal
	
	attr_accessor :name, :age, :gender, :num_children, :num_pets, :pets
	
	def initialize(name,age,gender,num_children)
		@name = name
		@age = age
		@gender = gender
		@num_children = num_children
		@num_pets = []
		@pets = {}
	end

	def to_s
		return "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@num_pets.join("").to_i} pets"
	end

	def display_pets
		super(name, age, gender, species)
		return "{@name} is a #{@age} year old #{@gender} #{@species} that loves\n #{@name} is a #{@age} year old #{@gender} #{@species} that loves "
	end

end

