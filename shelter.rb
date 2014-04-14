require_relative 'client'

class Shelter
	attr_accessor :name, :address, :client, :animal

	def initialize(name,address)
		@name = name
		@address = address
		@animal = {}
		@client = {}
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animal.length} animals and #{@client.length} people"
	end

	def display_animals
		animal_info = []
		@animal.each { |key,val| animal_info.push(val.to_s) }
		animal_info.join("\n")
	end

	def display_clients
		client_info = []
		@client.each { |key,val| client_info.push(val.to_s) }
		client_info.join("\n")
	end

	def adopt(client_name, animal_name)
		@client[client_name].pets[animal_name] = @animal[animal_name]
		@animal.delete(animal_name)
	end

	def return(client_name, animal_name)
		@animal[animal_name] = @client[client_name].pets[animal_name]
		@client[client_name].pets.delete(animal_name)
	end

end