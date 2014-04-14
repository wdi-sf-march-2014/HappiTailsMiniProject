

class Shelter

	attr_accessor :name, :address, :animals, :clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		return "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
	end

	def display_animals
		@animals.values.join("\n")
	end

	def display_clients
		@clients.values.join("\n")
	end
	
	def adopt(choice)
		@animals.delete(choice)
	end
end
