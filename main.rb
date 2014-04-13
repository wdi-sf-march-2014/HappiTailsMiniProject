require 'pry'
require_relative 'menu'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
require_relative 'data'
binding.pry

puts "=" * 80
puts "Welcome to HappiTails".center(80)
puts "=" * 80
puts $shelter

  puts
  puts "Please choose one of the following options:".center(80)
  puts
  puts "(a) display all animals".ljust(40) + "(c) create an animal".ljust(40)
  puts "(b) display all clients".ljust(40) + "(d) create a client".ljust(40)
  puts 
  puts "(q) quit"
  puts
  response = gets.chomp

while response != 'q'
	case response
		when "a"
			puts
			puts "All animals:"
			puts '------------'
			puts
			$shelter.display_animals
			puts
		when "b"
			puts
			puts "All clients:"
			puts '------------'
			puts
			$shelter.display_clients
			puts
		when "c"
			puts
			puts "Enter the name of the animal:"
			name = gets.chomp.capitalize
			puts "Enter #{name}'s age:"
			age = gets.chomp
			puts "Enter #{name}'s sex:"
			sex = gets.chomp.downcase
			puts "Enter #{name}'s species:"
			species = gets.chomp.capitalize
			puts "Enter #{name}'s favorite toys:"
			toy = gets.chomp.capitalize

			animal = Animal.new(name, age, sex, species)
			animal.toys.push(toy)

			puts
			puts "Animal created:"
			puts '------------'
			puts
			puts animal
		when "d"
		else 
			puts
			puts "Please select an option from above (a, b, c, d, or q):"
  	end
   	
   	  puts
	  puts "Please choose one of the following options:".center(80)
	  puts
	  puts "(a) display all animals".ljust(40) + "(c) create an animal".ljust(40)
	  puts "(b) display all clients".ljust(40) + "(d) create a client".ljust(40)
	  puts 
	  puts "(q) quit"
	  puts
	  response = gets.chomp
end