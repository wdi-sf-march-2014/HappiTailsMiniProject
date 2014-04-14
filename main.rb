require 'colorize'
require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'data'
# require_relative 'functions'

def menu
puts " "
puts "Please select an option:".bold.colorize( :blue )
puts <<PARAGRAPH
------------------------------------------------------------------
(a) Display all animals 		(e) Adopt an animal
(b) Display all clients 		(f) Return an animal
(c) Create an animal 			(g) Animal to put down
(d) Create a client 			(q) Abort mission
------------------------------------------------------------------
PARAGRAPH
end

menu()
response = gets.chomp()

while response != "q"
	case response
	when "a" || "A"
		puts "All of the animals are listed below:"
		puts $shelter.display_animals.to_s.bold.colorize( :red )

	when "b" || "B"   
		puts "All clients:"
		puts $shelter.display_clients
		puts ""

	when "c" || "C" 
		puts "What type of animal would you like to give birth to?"
		species = gets.chomp
		puts "How old is this animal?"
		age = gets.chomp.to_i
		puts "Male or female?"
		gender = gets.chomp
		puts "What is the name of this creature?"
		name = gets.chomp
		animal = Animal.new(name, age, gender, species)     
		$shelter.animals[name.to_sym] = animal
		puts "#{name} the #{species} has been successfully added to the shelter database.".bold.colorize( :red )
		puts ""

	when "d" || "D"   
		puts "What is the name of the new client?"
		name = gets.chomp
		puts "How old is this person?"
		age = gets.chomp.to_i
		puts "Male or female?"
		gender = gets.chomp
		puts "How many children does that client have?"
		number_of_children = gets.chomp
		client = Client.new(name, age, gender, number_of_children)  
		$shelter.clients[name.to_sym] = client
		puts "#{name} has been successfully added to the client list.".bold.colorize( :red )
		puts ""

	when "e" || "E"
		puts "What animal is up for adoption?"
		puts "(#{$shelter.animals.keys.join(", ")})"
    animal_to_adopt = gets.chomp

    puts "What client is adopting this animal?"
    puts "(#{$shelter.clients.keys.join(", ")})"
    client_to_adopt = gets.chomp
		
		puts $shelter.adopt(client_to_adopt, animal_to_adopt)
		puts ""

	when "f" || "F"
		puts "What client is returning an animal?"
    puts "(#{$shelter.clients.keys.join(", ")})"
    client_to_return = gets.chomp

    puts "What animal is being returned?"
		puts "(#{$shelter.clients[client_to_return].pets.keys.join(", ")})"
    animal_to_return = gets.chomp
	
		$shelter.return(client_to_return,animal_to_return)

	when "g" || "G"
		puts "What animal would you like to put down?"
		puts "(#{$shelter.animals.keys.join(", ")})"
		animal_to_kill = gets.chomp
		$shelter.kill(animal_to_kill)
end

menu()
response = gets.chomp()
end

