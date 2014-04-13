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
			puts $shelter.animals[name].to_s.bold.colorize(:yellow)
			puts
			puts
			puts
			puts
			puts
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
			puts $shelter.clients[name].to_s.bold.colorize(:yellow)
			puts
			puts
			puts
			puts
			puts
		when "adopt"
			puts
			puts "Enter the adopted animal: (#{$shelter.animals.keys.join(", ")})"
			adoptee = gets.chomp.capitalize
			puts "Enter the adopting client: (#{$shelter.clients.keys.join(", ")})"
			adopter = gets.chomp.capitalize
			$shelter.adopt(adoptee,adopter)
			puts
			puts "#{$shelter.clients[adopter].pets[adoptee].name} has been adopted by #{$shelter.clients[adopter].name}.".bold.colorize(:yellow)
		when "return"
			puts
			puts "Enter the returning client: (#{$shelter.clients.keys.join(", ")})"
			returner = gets.chomp.capitalize
			puts "Enter the returned animal: (#{$shelter.clients[returner].pets.keys.join(", ")})"
			returnee = gets.chomp.capitalize
			$shelter.return(returnee,returner)
			puts
			puts "#{$shelter.animals[returnee].name} has been returned by #{$shelter.clients[returner].name}.".bold.colorize(:yellow)
		else 
			puts
			puts "Please choose a, b, c, d, adopt, return, or q".bold.colorize(:red)
  	end
   binding.pry	
   	  menu_options()
	  response()
end