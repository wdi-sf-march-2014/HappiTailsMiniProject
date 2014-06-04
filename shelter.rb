class Shelter 
	attr_accessor :clients, :animals, :num_animals, :num_clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals= {}	
		@clients = {}
		@num_animals = @animals.length
		@num_clients = @clients.length
		
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@num_animals} animals and #{@clients.length} people"
	end

	
	def display_clients
	  clint = Clients.to_s
	  puts clint
    	#@clients.each do |client| 
         ##@num_clients = client
      # end
       #@num_clients
	#end
       
	def display_pets
		#@animals.each_key do |animal|
		animal = Clients.display_pets
			puts animal
		end
	end

	def create_a_client(name, age, gender, number_of_children)
		@clients[name] = Client.new(name, age, gender, number_of_children)
	end

	def create_a_animal(name, age, gender, species)
		@animals[name] = Animal.new(name, age, gender, species)
	end

	def adopt
		puts "What client wants to adopt?"
		client_adopting = gets.chomp.to_sym

		puts "What pet does client want to adopt?"
		pet_adopted = gets.chomp

		pets["client_adopting"] = pet_adopted
	end
# 	def adopt 

# 		puts "what client wants adopt"
# 			 client_adopt = gets.chomp
# 	 puts "What pet will be adopted?"
# 	  	pet_adopted = gets.chomp

# 	  	pet_adopted.push @client.pet 
# 	  	# create has with client, aniaml  and have it add a pair to adopt
# send pet into clients pets hash

	# end
	def return
		puts "What client is returning a pet?"
		client_returning = gets.chomp.to_sym

		puts "What pet does client want to return?"
		pet_return = gets.chomp

		pets.delete(:client_returning)
		#pets[:client_adopting] = pet_adopted
		# create same client animal has and have it set value to 0 or eject
	end
end

