class Shelter 
	attr_accessor :name, :address, :animals, :clients 

	def initialize(name, address)
		@name = name
		@address = address
		@animals= {}	
		@clients = {}
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} clients."
	end

	def display_animals
		animal = []
		@animals.each do |k,v|
			animal.push(v.to_s)
		end
		puts "\n"
		puts animal.join("\n")
		puts "\n"
	end	

	def display_clients
		client = []
    	@clients.each do |k,v| 
          client.push(v.to_s)
        end
        puts "\n"
        puts client.join("\n")
        puts "\n"
	end

	def create_animal
		puts "Enter pet name:"
		name = gets.chomp
		puts "Enter pet age:"
		age = gets.chomp
		puts "Enter pet gender:"
		gender = gets.chomp
		puts "Enter pet species:"
		species = gets.chomp
		@animals[name] = Animal.new(name, age, gender, species)
		puts "Enter one or more favorite toys, separated by the word 'or':"
		toy = gets.chomp	
		@animals[name].toys << "#{toy}"
		puts "\n"
		puts @animals[name]
		puts "\n"
	end

	def create_client
		puts "Enter client name:"
		name = gets.chomp
		puts "Enter client age:"
		age = gets.chomp
		puts "Enter client gender:"
		gender = gets.chomp
		puts "Enter the number of client's children:"
		number_of_children = gets.chomp
		@clients[name] = Client.new(name, age, gender, number_of_children)
		puts "\n"
		puts @clients[name]
		puts "\n"
		end

	def adopt
		puts "What client wants to adopt an animal?"
		client_adopt = gets.chomp
		if @clients[client_adopt] == nil
			puts "Please enter an existing client, or create a new client."
			puts "\n"
			return
		end
		puts "What pet does client want to adopt?"
		pet_adopt = gets.chomp
		if @animals[pet_adopt] == nil
			puts "Please enter an existing animal, or create a new animal."
			puts "\n"
			return
		end
		@clients[client_adopt].pets[pet_adopt]=@animals[pet_adopt]
		@animals.delete(pet_adopt)
	end

	def return
		puts "What client is returning a pet?"
		client_returning = gets.chomp
		puts "What pet does client want to return?"
		pet_return = gets.chomp
		@animals[pet_return]=@clients[client_returning].pets[pet_return]
		@clients[client_returning].pets.delete(pet_return)
	end

end

