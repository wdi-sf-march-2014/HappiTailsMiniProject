require 'pry'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

puts "Welcome to Happitails Animal Shelter! \n"

puts "Please make a selection"
puts "A. Display all animals \n"
puts "B. Display all clients \n"
puts "C. Create an Animal \n"
puts "D. Create a Client \n"
puts "E. Adopt an Animal \n"
puts "F. Return an Animal \n"
puts "Q. Quit"

response = gets.chomp.upcase

while response != 'Q'
case response
 
 when "A"
 	$shelter.display_animals
 when "B"
 	$shelter.display_client
 when "C"
 	puts "Enter name:"
 	name = gets.chomp
 	puts "Enter age:"
 	age = gets.chomp
 	puts "Enter gender:"
 	gender = gets.chomp
 	puts "Enter species"
 	species = gets.chomp
 	new_animal = Animal.new(name,age,gender,species)
 	$shelter.animals[name] = new_animal

 when "D"
 	puts "Enter name:"
 	name = gets.chomp
 	puts "Enter age:"
 	age = gets.chomp
 	puts "Enter gender:"
 	gender = gets.chomp
 	puts "Enter number of children"
 	children = gets.chomp
 	new_client = Client.new(name,age,gender,children)
 	$shelter.client[name]= new_client

 when "Q"
 end
end
 	
  
