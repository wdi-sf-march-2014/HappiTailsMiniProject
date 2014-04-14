class Shelter

	attr_accessor :name, :address, :animals, :clients

	def initialize (name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		return "#{name} shelter at #{address} has #{animals.length} animals and #{clients.length} people"
	end

	def display_clients
		names = @clients.map do |key, client|
			client
		end
	
		return names.join("\n")
	end

	def display_animals
		names = @animals.map do |key, animal|
			animal
		end

		return names.join("\n")
	end

end