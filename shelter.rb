

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
	
	def create_client
		puts "Please enter name:"
		animal_name = gets.chomp
		puts "Please enter age:"
		animal_age = gets.chomp.to_i
		puts "Please enter gender:"
		animal_gender = gets.chomp
		puts "Please enter species:"
		animal_species = gets.chomp
		new_animal = Animal.new(animal_name, animal_age, animal_gender, animal_species)
		$shelter.animals[animal_name] = new_animal
		puts "Animal created: #{animal_name}, #{animal_age}, #{animal_gender}, #{animal_species}" 
	end

	def create_animal
			puts "Please enter name:"
		client_name = gets.chomp
		puts "Please enter age:"
		client_age = gets.chomp.to_i
		puts "Please enter gender:"
		client_gender = gets.chomp
		puts "Please enter number of children:"
		client_children = gets.chomp.to_i
		new_client = Client.new(client_name, client_age, client_gender, client_children)
		$shelter.clients[client_name]= new_client
		puts "Client created: #{client_name}, #{client_age}, #{client_gender}, #{client_children}" 
	end
		
	end

	def adopt
		puts "Who would like to adopt a pet?"
		client_adopt = gets.chomp.capitalize
		puts "Who would #{client_adopt} like to adopt?"
		pet_adopt = gets.chomp.capitalize
		@clients[client_adopt].pets[pet_adopt] = @animals[pet_adopt]
		puts "Congratulations! #{client_adopt} is now the proud master of #{pet_adopt}. "
		@animals.delete(pet_adopt)
	end

	def return
		puts "Who would like to return an adopted animal?"
		client_return = gets.chomp.capitalize
		puts "Which pet would #{client_return} wanna return?"
		pet_return = gets.chomp.capitalize
		@animals[pet_return] = @clients[client_return].pets[pet_return]
		@clients[client_return].pets.delete(pet_return)
	end
end
