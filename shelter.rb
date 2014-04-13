class Shelter 
	attr_accessor :name, :address, :animals, :clients
#clients, :animals 
		def initialize(name, address)
			@name = name
			@address = address
			@animals= {}	
			@clients = {}
		end

		def to_s
			"#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
		end
		
		def display_clients
			 client = []
   			 @clients.each do |k,v| 
         	 client.push(v.to_s)
        	end
        	
        	puts client.join("\n")
		end
			puts "\n"

		def display_animals
			animal = []
			@animals.each do |k,v|
			animal.push(v.to_s)
			end
			puts animal.join{"\n"}
		end
			puts "\n"

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


  		def adopt
  			puts "what client wants to adopt?"
			client_adopt = gets.chomp
		 	puts "What pet will be adopted?"
		  	pet_adopt = gets.chomp
				
			@clients[client_adopt].pets[pet_adopt]=@animals[pet_adopt]
			@animals.delete(pet_adopt)
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

		#def return(client_name,animal_name)
						# @animals[animal_name]=@clients[client_name].pets[animal_name]
						# @clients[client_name].pets.delete(animal_name)
						#end
end

