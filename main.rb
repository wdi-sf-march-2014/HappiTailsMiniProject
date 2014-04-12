require "pry"
# require 'rainbow'
require_relative "data"
require_relative "animal"
require_relative "client"
require_relative "shelter"

puts "Welcome to the HappiTails Amimal Shelter! \n\n"

puts "A. Display all animals \n
B. Display all clients \n
C. Create an animal \n
D. Create a client \n
E. Adopt an animal \n
F. Return an animal \n
Q. Quit"

response = gets.chomp.upcase

while response != 'Q'
	case response

	when "A" 
		$shelter.display_animals

	when "B"  
		$shelter.display_clients

	when "C" #new animal
		puts "Enter name: "
		name = gets.chomp
		puts "Enter age: "
		age = gets.chomp	
		puts "Enter gender: "
		gender = gets.chomp
		puts "Enter species: "
		species = gets.chomp
		new_animal = Animal.new(pet_name, age, gender, species)
		$shelter.animals[new_animal.animal_name] = new_animal

	when "D" #new client
		puts "Enter name: "
		name = gets.chomp
		puts "Enter age: "
		age = gets.chomp
		puts "Enter gender: "
		gender = gets.chomp
		puts "Enter number of children: "
		children = gets.chomp
		new_client = Client.new(cliet_name, age, gender, children)
		$shelter.clients[new_client.client_name]= new_client

	when "E" #adopt
		puts "Enter client name"
		client_name = gets.chomp.capitalize
		puts "Enter a pet name"
		pet_name = gets.chomp.capitalize

		$shelter.adopt(client_name, pet_name)

	when "F" #return
		puts "Enter a client name"
		client_name = gets.chomp.capitalize
		puts "Enter a pet name"
		pet_name = gets.chomp.capitalize

		$shelter.return(client_name, pet_name)

	when "Q" #quit
	end

puts "A. Display all animals \n
B. Display all clients \n
C. Create an animal \n
D. Create a client \n
E. Adopt an animal \n
F. Return an animal \n
Q. Quit"
response = gets.chomp.upcase

end

#  #####Phase 3
# - Create a basic menu
#   - At start, the user is prompted with a menu of options
#   - After selecting from the menu the task the user is 
#   				prompted through the entire process
#   - Start with the following options
#     - display all animals
#     - display all clients
#     - create an animal
#     - create a client
#   - The code for these features will go in your 
#   main.rb file

# #####Phase 4
# - Expand your menu
#   - Add the following features
#     - adopt an animal
#     - return an animal
#   - Hint: when an animal is adopted or returned it will be 
#   						moved between the client and shelter object

