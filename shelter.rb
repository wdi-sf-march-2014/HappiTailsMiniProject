class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize (name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end

	
	def to_s
		"#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
	end

	
	def display_animals
		"#{@animals}"
	end

	
	def display_clients
		client = []
		@clients.each do |k, v|
		client.push(v.to_s)
		end
		return client.join("\n")
	end

end


# The shelter should display all the clients.
# The shelter should display all the animals.
# The shelter should display all the animals.
# Ensure that new animals and clients can be added to the shelter
# Make sure your specs for shelter pass before moving on