require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative "animal"
require_relative "client"
require_relative "shelter"

puts "Welcome to the HappiTails Amimal Shelter!"
puts "a. Display all animals \nb. Display all clients \nc. Create an animal \nd. Create a client \nq. Quit"

response = gets.chomp.upcase

while response != 'Q'
	case response

	# when "A" 
# $shelter[]

	# when "B"       

	when "C" #new animal
		puts "Enter name: "
		name = gets.chomp
		puts "Enter age: "
		age = gets.chomp	
		puts "Enter gender: "
		gender = gets.chomp
		puts "Enter species: "
		species = gets.chomp
		new_animal = Animal.new(name, age, gender, species)
		$shelter.animals[name] = new_animal

	when "D" #new client
		puts "Enter name: "
		name = gets.chomp
		puts "Enter age: "
		age = gets.chomp
		puts "Enter gender: "
		gender = gets.chomp
		puts "Enter number of children: "
		children = gets.chomp
		new_client = Client.new(name, age, gender, children)
		$shelter.client[name]= new_client

	when "Q"
	end

puts "a. Display all animals \nb. Display all clients \nc. Create an animal \nd. Create a client \nq. Quit"
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
#   main.rb, and function.rb files

# #####Phase 4
# - Expand your menu
#   - Add the following features
#     - adopt an animal
#     - return an animal
#   - Hint: when an animal is adopted or returned it will be 
#   						moved between the client and shelter object

