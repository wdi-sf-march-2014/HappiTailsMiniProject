

class Client
	attr_accessor :name, :age, :gender, :num_pets, :pets, :animals
	def initialize(name, age, gender, num_pets)
		@name = name
		@age = age
		@gender = gender
		@num_pets = num_pets
		@pets = {}
	end

 	def to_s
 	"#{@name} is a #{@age} year old #{@gender} and has #{@num_pets} pets"	
 	end

	def display_pets
		# "#{@name} is a #{@age} year old #{@gender} cat that loves"
		pets = ""
		@pets.each do |k,v|
		pets += (v.to_s + "\n") 
		end
		return pets.chomp
	end

	# def add_animal(animal)
	# 	@animals[animal.name] = animal
	# end

	# def delete_animal(animal)
	# 	@animals[animal.name] = animal
		
	# end
	
end

	# name, num child, age, no pets

	# describe ".to_s" do
 #    it "prints the Client object's attributes in a sentence" do
 #      expect(@client.to_s).to eql("Beth is a 30 year old female with 3 kids and 0 pets")
 #    end
 #  end

 #describe ".display_pets" do
#     it "prints names of the Client object's pets" do
#       tiny = Animal.new("Tiny", 3, "male", "cat")
#       franz = Animal.new("Franz", 5, "male", "cat")
#       @client.pets[tiny.name.to_sym] = tiny
#       @client.pets[franz.name.to_sym] = franz
#       expect(@client.display_pets).to match("Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves ")
#     end
#   end

	# def pets
	# Beth.pets.push[]
	# end
	# tiny = Animal.new("Tiny", 3, "male", "cat")
 #    franz = Animal.new("Franz", 5, "male", "cat")
 # 	Beth = Client.new('Beth', 30, 'female', 3, 0)


 #    p tiny.display_pets
 #    p franz.display_pets
 	# 
