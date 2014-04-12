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

		  # takes an Animal object from a Client and adds it to the shelter

		  # aka take an Animal from the client's pets{} and put it in shelters animals {}

		  # aka...
		  # access @pets hash in Client class
		  # key:value pair will be :petname => [pet instance of Animal class] ---right???
		  # pop that object out of @clients.pets
		  # push that Animal object onto the @animals hash in the Shelter class

		  # surrendered = Animal.new("Unlucky", 2, "female", "cat" ) #pretend surrendered = instance of Animal class = a cat named Unlucky
		  # @client.pets[surrendered.name.to_sym].pop 	# we find the :surrendered key and pop it off the @pets hash in Clients (can you do that?)
		  # @animals = {:Unlucky => surrendered} # push it onto the @animals hash with the key = :Unlucky, value = object in Animal class called surrendered

		  # @client.pets[tiny.name.to_sym] = tiny

	def adopt

	end

end