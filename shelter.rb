
class Shelter
	attr_accessor :shelter_name, :address, :clients, :animals

	def initialize(shelter_name,address)
		@shelter_name = shelter_name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		"#{@shelter_name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_animals
		animal_info = []
		@animals.each { |key,val| animal_info.push(val.to_s) }
		animal_info.join("\n")
	end

	def display_clients
		client_info = []
		@clients.each { |key,val| client_info.push(val.to_s) }
		client_info.join("\n")
	end

	def intake(animal_name, animal_age, animal_gender, species)
		new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
		@animals[animal_name.to_sym] = new_animal
	end

	def adopt(client_name, animal_name)
		@clients[client_name.to_sym].pets[animal_name.to_sym] = @animals[animal_name.to_sym]
		@animals.delete(animal_name.to_sym)
	end

end

# new_shelter = Shelter.new(shelter_name,address)

	# def new_client(client_name, client_age, client_gender, num_children)
	# 	new_client = Client.new(client_name, client_age, client_gender, num_children)
	# 	@clients[client_name.to_sym] = new_client
	# end

# shelter = Shelter.new('HappiTails', '10 East 21st Street')

# beth = Client.new("Beth",30,"female",3)
# shelter.clients[beth.client_name.to_sym] = beth

# tiny = Animal.new("Tiny", 3, "male", "cat")
# shelter.clients[beth.client_name.to_sym].pets[tiny.animal_name.to_sym] = tiny

# franz = Animal.new("Franz", 5, "male", "cat")
# shelter.animals[franz.animal_name.to_sym] = franz

# puts beth.display_pets
# puts "-"
# puts shelter.display_animals

# puts "RUN FUNCTION"
# shelter.intake("Tiny", 3, "male", "cat")

# puts beth.display_pets
# puts "-"
# puts shelter.display_animals


# #ADOPT FUNCTION WORKS
