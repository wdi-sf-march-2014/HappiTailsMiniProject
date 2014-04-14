class Shelter

	attr_accessor :shelter, :address, :clients, :animals

	def initialize (shelter, address)
		@shelter = shelter
		@address = address
		@clients = {}
		@animals = {}
	end

	
	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
	end

	
	def display_animals
		$shelter.animals.each { |k, v| puts v.to_s + "\n" }
	end

	
	def display_clients
		client = []
		@clients.each do |k, v|
		client.push(v.to_s)
		end
		return client.join("\n")
	end

end