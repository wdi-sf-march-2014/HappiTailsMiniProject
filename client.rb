class Client
	attr_accessor :name, :age, :gender, :num_children, :pets
	def initialize(name, age, gender, num_children)
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

	#Beth is a 30 year old female with 3 kids and 0 pets

	def display_pets
		pets.values.join("\n")
	end

	# describe ".display_pets" do
 #    it "prints names of the Client object's pets" do
 #      tiny = Animal.new("Tiny", 3, "male", "cat")
 #      franz = Animal.new("Franz", 5, "male", "cat")
 #      @client.pets[tiny.name.to_sym] = tiny
 #      @client.pets[franz.name.to_sym] = franz
 #      expect(@client.display_pets).to match("Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves ")
 #    end

end

