require 'pry'
require 'rainbow'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'


response = false

while response != 'Q'

puts <<PARAGRAPH 

Welcome to the Shelter.  Here are your options.  Type the number only to select one:

1) display all animals
2) display all clients
3) create an animal
4) create a client
5) adopt an animal
6) returns an animal
#TO DO fix returns to be return
Q) Quit

PARAGRAPH

response = gets.chomp

case response 

when "1"
	$shelter.display_animals
when "2"
	$shelter.display_clients
when "3"
	puts "Creating an Animal"
	puts "Name:"
	name = gets.chomp
	puts "Age: (number only)" 
	age = gets.chomp.to_i
	puts "Gender:"
	gender = gets.chomp
	puts "Species:"
	species = gets.chomp
 	$shelter.animals[name.to_sym] = Animal.new(name, age, gender, species)
 	puts "#{name.to_sym} created"
 	puts $shelter.animals[name.to_sym]
# client.pets[
when "4"
	puts "Creating a Client"
	puts "Name:"
	name = gets.chomp
	puts "Age: (number only)" 
	age = gets.chomp.to_i
	puts "Gender:"
	gender = gets.chomp
	puts "Number of Children"
	num_children = gets.chomp
	$shelter.clients[name.to_sym] = Client.new(name, age, gender, num_children)
 	puts "#{name.to_sym} created"
 	puts $shelter.clients[name.to_sym]

when "5"
	$shelter.adopt

when "6"
	$shelter.returns
end
end