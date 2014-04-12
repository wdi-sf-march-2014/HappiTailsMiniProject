class Shelter
	attr_accessor :name, :address , :shelter, :clients, :animals

	def initialize (name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
		@shelter = {}
		#shelter will be hash of "animal name" => "Client name"
	end

	def number_of_clients
		@clients.count
	end

	def number_of_animals
		@animals.count
	end


	def to_s
		"#{@name} at #{@address} has #{number_of_animals} animals and #{number_of_clients} people"
	end

	def display_animals
		@animals.each_key {|name| puts name}
	end

	def display_clients
		@clients.each_key {|client| puts client}
	end

	def create_animal (name, age, gender, species)
		@animals[name] = Animal.new(name, age, gender, species)
	end

	def create_client (name, age, gender, kids)
		@clients[name] = Clients.new(name, age, gender, kids)
	end
	

	def adopt_animal (animal, client)
		@shelter[animal] = client
	end

	def return_animal (name)
		@shelter[name] = nil
	end

end