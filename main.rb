require 'pry'
require_relative 'data'

require_relative 'animal'

require_relative 'client'

require_relative 'shelter'





puts "Welcome to the HappiTails Shelter."
puts "Please choose a function:"
puts"        (DA) to display all animals in the Shelter
	(DC) to display all clients of the Shelter
	(NA) to create a new animal
	(RC) to register a new client
	(A) to adopt a new pet
	(RP) to return an adopted pet
	(Q) to quit the program"
response = gets.chomp.upcase





while response != "Q"
	case response

	when "DA"
	  puts "We have these animals:"
	  puts $shelter.display_animals

	when "DC"
	  puts "We have these clients:"
	  puts $shelter.display_clients

	when "NA"
	 puts "What is the animal's name?"
	 animal_name = gets.chomp
	 puts "How old is the animal?"
	 animal_age = gets.chomp
	 puts "Is the animal male or female?"
	 animal_gender = gets.chomp
	 puts "What species in the animal?"
	 species = gets.chomp

	 $shelter.new_animal(animal_name, animal_age, animal_gender, species)
	 puts "Your animal is now registered in HappiTails."
	 puts $shelter.animals[animal_name]

	when "RC"
	 puts "What is the new client's name?"
	 client_name = gets.chomp
	 puts "How old is the new client?"
	 client_age = gets.chomp
	 puts "Is the new client male or female?"
	 client_gender = gets.chomp
	 puts "How many children does this client have?"
	 num_children = gets.chomp

	 $shelter.new_client(client_name, client_age, client_gender, num_children)
	 puts "The new client is registered with the shelter"
	 puts $shelter.clients[client_name]

	when "A"
	 puts "Which client is adopting an animal today?"
	 client_name = gets.chomp.capitalize
	 puts "Which animal are they adopting?"
	 animal_name = gets.chomp.capitalize

	 $shelter.adopt(client_name, animal_name)
	 puts "Adoption Confirmed"

	when "RP"
	 puts "Which client is returning an animal?"
	 client_name = gets.chomp.capitalize
	 puts "Which animal are they returning?"
	 animal_name = gets.chomp.capitalize

	 $shelter.return(client_name, animal_name)
	 puts "You have returned your animal. Who hates puppies???"
	
	when "Q"
	  puts "Bye!"	

	end
	puts "\nIs there anything else you would like to do?\n
	(DA) to display animals
	(DC) to display clients
	(NA) to intake a new animal
	(RC) to register a new client
	(A) to adopt a pet
	(RP) to return an adopted pet
	(Q) to quit"
	response = gets.chomp.upcase
end
