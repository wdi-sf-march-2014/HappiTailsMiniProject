class Client

	attr_accessor :name, :age, :gender, :number_kids, :pets

	def initialize (name, age, gender, number_kids)
		@name = name
		@age = age
		@gender = gender
		@number_kids = number_kids
		@pets = {}
	end 

	def to_s
		return "#{@name} is a #{@age} year old #{@gender} with #{@number_kids} kids and #{pets.length} pets"
	end

	def display_pets
		names = []
		@pets.each do |key, animal|
			names.push(animal)
		end
	
		return names.join("\n")
	end
end