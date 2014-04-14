class Animal
	attr_accessor :name, :age, :gender, :species, :toys

	def initialize(name, age, gender, species)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = []
	end

	def to_s
	#"Tiny is a 3 year old male cat that loves mice, string"
	return "#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ").to_s}"
	end


end
