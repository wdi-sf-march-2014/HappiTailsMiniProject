
class Shelter
	attr_accessor :shelter_name, :address

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

		  #need to take an Animal from the client's pets{} and putting it in shelters animals {}

	def adopt

	end

end
