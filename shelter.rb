require_relative 'client'

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

	def new_client(client_name, client_age, client_gender, num_children)
		new_client = Client.new(client_name, client_age, client_gender, num_children)
		@clients[client_name] = new_client
	end

	def new_animal(animal_name, animal_age, animal_gender, species)
		new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
		@animals[animal_name] = new_animal
	end

	def adopt(client_name, animal_name)
		@clients[client_name].pets[animal_name] = @animals[animal_name]
		@animals.delete(animal_name)
	end

	def return(client_name, animal_name)
		@animals[animal_name] = @clients[client_name].pets[animal_name]
		@clients[client_name].pets.delete(animal_name)
	end

end