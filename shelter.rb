class Shelter
	attr_accessor :name, :address, :animals, :clients
	# def initialize(animals, address)
		# @animals = animals
		# @address = address
		# @clients = {}
	def initialize(name, address)
		@name = name
		@address = address
		@animals= {}	
		@clients = {}
	end

	def to_s
		"#{@animals} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"     
	end

	def display_animals
		animal = []
		@animals.map do |key,value|
		animal.push(value.to_s)
		end
		puts animal.join("\n")
	end

	def display_clients
		client = []
		@clients.map do |key,value|
		client.push(value.to_s)
		end
		puts client.join("\n")
	end

	def create_client
		puts "Enter a client name"
		name = gets.chomp
		puts "Enter a client age"
		age = gets.chomp
		puts "Enter a client gender"
		gender = gets.chomp
		puts "Enter the number of children"
		number_of_children = gets.chomp

		@clients[name] = Client.new(name, age, gender, number_of_children)
		new_client = @clients[name]

		puts new_client
		puts "\n"
	end

	def create_animal
		puts "Enter a pet name"
		name = gets.chomp
		puts "Enter a pet age"
		age = gets.chomp
		puts "Enter a pet gender"
		gender = gets.chomp
		puts "Enter a pet species"
		species = gets.chomp

		@animals[name] = Animal.new(name, age, gender, species)
		
		new_animal = @animals[name] 
		puts new_animal
		puts "\n"
	end

	def adopt_pet(client_name, animal_name)
		puts "what client wants to adopt?"
		client_name = gets.chomp
	 	puts "What pet will be adopted?"
	  	animal_name = gets.chomp
			
		$shelter.clients[client_name].pets[animal_name] = $shelter.animals[animal_name]
		$shelter.animals.delete(animal_name)
	end

	def return
		puts "What client is returning a pet?"
		client_return = gets.chomp

		puts "What pet does client want to return?"
		pet_return = gets.chomp

		@animals[pet_return]=@clients[client_return].pets[pet_return]
		@clients[client_return].pets.delete(pet_return)
		#@clients.delete(pet_return)
		end
end
