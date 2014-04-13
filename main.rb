require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

puts "Welcome to the HappiTails Rescue Shelter!"

puts "Please pick an option: \n
(A) Display Animals \n
(B) Display Clients \n
(C) Create Animals \n
(D) Create Clients \n
(E) Adopt an animal \n
(F) Return an animal \n
(Q) Quit"
response = gets.chomp.upcase

while response != "Q"
	case response
		when "A"
			$shelter.display_animals
		when "B"
			$shelter.display_clients 
		when "C"
			puts "Enter Name"
			name = gets.chomp.capitalize.to_s
			puts "Enter age"
			age = gets.chomp.to_i
			puts "Enter gender"
			gender = gets.chomp.to_s
			puts "Enter species"
			species = gets.chomp.to_s
			new_animal = Animal.new(name, age, gender,species)
			$shelter.animals[name] = new_animal
		when "D"
			puts "Enter your name"
			name = gets.chomp.to_s
			puts "Enter your age"
			age = gets.chomp.to_i
			puts "Enter your gender"
			gender = gets.chomp.to_s
			puts "How many children do you have"
			children = gets.chomp.to_i
			new_client = Client.new(name, age, gender, children)
			$shelter.clients[name] = new_client  
		when "E"
			puts "What is your name?"
			client_name = gets.chomp.capitalize.to_s
			puts "Which animal do you want to adopt?"
			animal_name = gets.chomp.capitalize.to_s
			$shelter.animals.delete(animal_name)
		when "F"
			#puts "NO RETURNS. ALL ADOPTIONS ARE FINAL."
			puts "Which animal do you want to return?"
			animal_name = gets.chomp.capitalize.to_s
			# new_animal = Animal.new(name)
			$shelter.animals[name] = animal_name
		when "Q" 
		end
puts "Please pick an option: \n
(A) Display Animals \n
(B) Display Clients \n
(C) Create Animals \n
(D) Create Clients \n
(E) Adopt an animal \n
(F) Return an animal \n
(Q) Quit"
response = gets.chomp.upcase
	end
		

# response = #set this equal to something
# while response != 'Q'
#   ##Fill in code here
  
#   response = #set this equal to something
# end
