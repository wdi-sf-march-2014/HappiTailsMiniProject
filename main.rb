require 'pry'
#require 'rainbow'
require_relative 'data'

#Main menu:
	puts "\n"
	puts "Select an option:"
	puts "\n"
	puts "Display animals (1)"
	puts "Display clients (2)"
	puts "Create animals (3)"
	puts "Create clients (4)"
	puts "Adopt an animal (5)"
	puts "Return an animal (6)"
	puts "Quit (7)"
	input = gets.chomp.to_s

while input != "7"

	case input
		#Display animals
		when "1"
			puts "\n"
			$shelter.display_animals
		
		#Display clients
		when "2"
			puts "\n"
			puts $shelter.display_clients
		
		#Create animals
		when "3"
			puts "Name: "
			name = gets.chomp
			puts "Age: "
			age = gets.chomp
			puts "Gender: "
			gender = gets.chomp
			puts "Species: "
			species = gets.chomp
			puts "Toys: "
			toys = gets.chomp
			#optional checkpoint: puts "Confirm: #{name} - #{age} - #{gender} - #{species}"
			$shelter.animals[name] = Animal.new(name, age, gender, species)
		  puts "\n"
			#test - print out a newly added animal:
		  $shelter.animals.each do |k, v|
				puts "#{v}"
			end
		
		#Create clients
		when "4"
			puts "Name: "
			name = gets.chomp
			puts "Age: "
			age = gets.chomp
			puts "Gender: "
			gender = gets.chomp
			puts "Number of kids: "
			kids = gets.chomp
			$shelter.clients[name] = Client.new(name, age, gender, kids)
			puts "\n"
			#test - print newly added client
			$shelter.clients.each do |k, v|
				puts "#{v}"
			end

		#Adopt an animal
		when "5"
			#List the available animals
			puts "\n"
			$shelter.display_animals
			
			#Ask which one they would like to adopt
			puts "\n"
			puts "Which animal would you like to adopt?"
			$shelter.animals.each do |k, v|
				puts "#{k}"
			end	
			puts "\n"
			name = gets.chomp
			puts "\n"
			
			#Create .adopt methods to move animal #{name} from $shelter.animals{} to client.pets{}
				#Search the $shelter.animals{} hash for key matching #{name}
				#Store the key/value pair as variables
				#Add the key/value pair to client.pets{} hash
				$client.pets[name] = $shelter.animals.delete(name)
				#The line above doesn't seem to be working. Ran out of time.
			
		when "6"
			puts "\n"
			puts "Return an animal"
			#Create .return methods to move animal #{name} from client.pets{} to $shelter.animals{}
				#Search the client.pets{} hash for key matching #{name}
				#Store the key/value pair as variables
				#Add the key/value pair to $shelter.animals{} hash


client_pets[name] = shelter_animals.delete(name)
	end

#Main menu:
	puts "\n"
	puts "Select an option:"
	puts "Display animals (1)"
	puts "Display clients (2)"
	puts "Create animals (3)"
	puts "Create clients (4)"
	puts "Adopt an animal (5)"
	puts "Return an animal (6)"
	puts "Quit (7)"
		input = gets.chomp.to_s
	
end


