require 'pry'

#require_relative 'data'
#binding.pry
class Shelter 
		attr_accessor :shelter, :address, :clients, :animals

	def initialize(shelter, address)
		@shelter = shelter
		@address = address
		@clients = {}
		@animals = {}
	end

	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_animals
		$shelter.animals.each {|k,v| puts v.to_s + "\n"}
	end

	def display_clients
		$shelter.clients.each {|k, v| puts v.to_s}
	end

	def adopt_animal(client_name, animal_name)
		@clients[client_name].pets[animal_name] = @animals[animal_name]
		@animals.delete(animal_name)
	end

	def create_animal(animal_name, animal_age, animal_gender, species)
		new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
		@animals[animal_name] = new_animal
	end
		
	def create_client(name, age, gender, num_pets)
		new_client = Client.new(name, age, gender, num_pets)
	end
	
	def return_animal(client_name, animal_name)
		@animals[animal_name] = @clients[client_name].animals[animal_name]
		@clients[client_name].animals.delete(animal_name) 
	end
end

