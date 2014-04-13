require 'pry'
require 'colorize'
require_relative 'menu'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
require_relative 'data'

logo
gets
puts "=" * 80
puts "Welcome to HappiTails".center(80)
puts "=" * 80
puts $shelter

  menu_options()
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  response()

while @response != 'q'
	case @response
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

			$shelter.animals[name] = Animal.new(name, age, sex, species)

			$shelter.animals[name].toys.push(toy)

			puts
			puts "Animal created:"
			puts '------------'
			puts
			puts $shelter.animals[name]
		when "d"
			puts
			puts "Enter the name of the client:"
			name = gets.chomp.capitalize
			puts "Enter #{name}'s age:"
			age = gets.chomp
			puts "Enter #{name}'s address:"
			address = gets.chomp.downcase
			puts "Enter the species #{name} would like to adopt:"
			adoption_preference = gets.chomp.capitalize

			$shelter.clients[name] = Client.new(name, age, address, adoption_preference)

			puts
			puts "Client created:"
			puts '------------'
			puts
			puts $shelter.clients[name]
		else 
			puts
			puts "Please choose a, b, c, d, or q".bold.colorize(:red)
  	end
   	
   	  menu_options()
	  response()
end