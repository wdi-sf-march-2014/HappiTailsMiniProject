class Shelter 
		attr_accessor :shelter, :address, :animals, :client

	def initialize(shelter, address)
		@shelter = shelter
		@address = address
		@animals = {}
		@client = {}
	end

	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@client.length} people"
	end

	def display_animals
		animals = ""
		@animals.each do |k, v|
			animals += (v.to_s)
		end
		return animals.chomp
	end

	def display_clients
		client = ""
		@client.each do |k, v|
			client += (v.to_s)
		end
		return client.chomp
	end

	def adopt
	end
end

