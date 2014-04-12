require 'colorize'
require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'data'
# require_relative 'functions'

puts " "
puts "Please select an option:".bold.colorize( :blue )
puts <<PARAGRAPH
------------------------
(a) Display all animals
(b) Display all clients
(c) Create an animal
(d) Create a client 
(q) Abort mission
------------------------
PARAGRAPH

response = gets.chomp()

while response != "q"
	case response
	when "a" || "A"
		puts "All animals:"
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
		puts "#{name} the #{species} has been added to the shelter database".bold.colorize( :red )
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
		p client   
		puts client.to_s.bold.colorize( :red )

end

puts " "
puts "Please select an option:".bold.colorize( :blue )
puts <<PARAGRAPH
------------------------
(a) Display all animals
(b) Display all clients
(c) Create an animal
(d) Create a client 
(q) Abort mission
------------------------
PARAGRAPH

response = gets.chomp()
end

