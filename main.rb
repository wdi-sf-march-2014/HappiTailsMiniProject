require 'pry'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

puts "Welcome to the HappiTails Shelter.\nWhat would you like to do?\n
	A to display animals
	B to display clients
	C to intake a new animal
	D to register a new client
	E to process an adoption
	F to return an adopted pet
	Q to quit"
response = gets.chomp.upcase

while response != 'Q'
	case response

	when "A"
		puts "The animals currently in the shelter are:"
		puts $shelter.display_animals

	when "B"
		puts "Current client list:"
		puts $shelter.display_clients

	when "C"
		puts "What is the animal's name?"
		animal_name = gets.chomp
		puts "How old is this animal?"
		animal_age = gets.chomp
		puts "Is this animal male or female?"
		animal_gender = gets.chomp
		puts "What species in this animal?"
		species = gets.chomp

		$shelter.intake(animal_name, animal_age, animal_gender, species)
		puts "Intake Confirmed"
		puts $shelter.animals[animal_name]

	when "D"
		puts "What is the client's name?"
		client_name = gets.chomp
		puts "How old is the client?"
		client_age = gets.chomp
		puts "Is the client male or female?"
		client_gender = gets.chomp
		puts "How many children does the client have?"
		num_children = gets.chomp

		$shelter.new_client(client_name, client_age, client_gender, num_children)
		puts "Registration Confirmed"
		puts $shelter.clients[client_name]

	when "E"
		puts "Which client is adopting today?"
		client_name = gets.chomp
		puts "Which animal are they adopting?"
		animal_name = gets.chomp

		$shelter.adopt(client_name, animal_name)
		puts "Adoption Confirmed"

	when "F"
		puts "Which client is returning today?"
		client_name = gets.chomp
		puts "Which animal are they returning?"
		animal_name = gets.chomp

		$shelter.return(client_name, animal_name)
		puts "Return Confirmed"

	end
	puts "\nWhat would you like to do next?\n
	A to display animals
	B to display clients
	C to intake a new animal
	D to register a new client
	E to process an adoption
	F to return an adopted pet
	Q to quit"
	response = gets.chomp.upcase
end


  # 