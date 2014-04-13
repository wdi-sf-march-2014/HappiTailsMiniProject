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
		puts animal.join("\n")
		puts "\n"
	end
	

	def display_clients
		client = []
    	@clients.each do |k,v| 
          client.push(v.to_s)
        end
        puts client.join("\n")
        puts "\n"
	end

	# def create_animal
	# 	@animals[name] = Animal.new(name, age, gender, species)
	# 	$shelter.animals[new_animal.name] = new_animal
	# end

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
		# $shelter.animals = new_animal
		new_animal = @animals[name]

		puts new_animal
		puts "\n"
	end



	# def create_client(name, age, gender, number_of_children)
	# 	@clients[name] = Client.new(name, age, gender, number_of_children)
	# end

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



	# def adopt
	# 	puts "What client wants to adopt an animal?"
	# 	client_adopting = gets.chomp.to_sym

	# 	puts "What pet does client want to adopt?"
	# 	name = gets.chomp

	# 	$shelter.animals.delete(name)

	# 	#puts client_adopting[@pets]
	# 	#client_adopting[@pets][:client_adopting] = pet_adopted
	# end
# 	def adopt 
# 		puts "what client wants adopt"
# 			 client_adopt = gets.chomp
# 	 puts "What pet will be adopted?"
# 	  	pet_adopted = gets.chomp

# 	  	pet_adopted.push @client.pet 
# 	  	# create has with client, aniaml  and have it add a pair to adopt
# send pet into clients pets hash

	def adopt
		puts "What client wants to adopt an animal?"
		client_adopt = gets.chomp
		puts "What pet does client want to adopt?"
		pet_adopt = gets.chomp

		@clients[client_adopt].pets[pet_adopt]=@animals[pet_adopt]
		@animals.delete(pet_adopt)
	end


	# end
	# def return
	# 	puts "What client is returning a pet?"
	# 	client_returning = gets.chomp.to_sym

	# 	puts "What pet does client want to return?"
	# 	pet_return = gets.chomp

	# 	pets.delete(:client_returning)
	# 	#pets[:client_adopting] = pet_adopted
	# 	# create same client animal has and have it set value to 0 or eject
	# end

	def return
		puts "What client is returning a pet?"
		client_returning = gets.chomp.to_sym

		puts "What pet does client want to return?"
		pet_return = gets.chomp

#		@animals[pet_return]=@clients[client_returning].pets[pet_return]
		@animals[pet_return]=@clients[client_returning].pets[pet_return]
		@clients[client_returning].pets.delete(pet_return)
	end


end

