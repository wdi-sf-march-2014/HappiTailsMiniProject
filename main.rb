require 'pry'
#require 'rainbow'
require_relative 'data'

puts "\n"
puts "Select an option:"
puts "\n"
puts "Display animals (1)"
puts "Display clients (2)"
puts "Create animals (3)"
puts "Create clients (4)"
puts "Adopt an animal (5)"
puts "Return an animal (6)"
puts "Quit (7)"

input = gets.chomp.to_s

while input != "7"

	case input
		when "1"
			puts "\n"
			$shelter.display_animals
		
		when "2"
			puts "\n"
			puts $shelter.display_clients
	
		when "3"
			puts "Name: "
			name = gets.chomp
			puts "Age: "
			age = gets.chomp
			puts "Gender: "
			gender = gets.chomp
			puts "Species: "
			species = gets.chomp

			puts "Toys: "
			toys = gets.chomp
			
			#optional checkpoint: puts "Confirm: #{name} - #{age} - #{gender} - #{species}"
			
			$shelter.animals[name] = Animal.new(name, age, gender, species)
		  puts "\n"

		  #optional checkpoint: Print out a newly added animal:
		  $shelter.animals.each do |k, v|
				puts "#{v}"
			end

		
		when "4"
			#puts "Create clients"
			
			puts "Name: "
			name = gets.chomp
			puts "Age: "
			age = gets.chomp
			puts "Gender: "
			gender = gets.chomp
			puts "Number of kids: "
			kids = gets.chomp

			$shelter.clients[name] = Client.new(name, age, gender, kids)
			puts "\n"

			$shelter.clients.each do |k, v|
				puts "#{v}"
			end

		when "5"
			#puts "Adopt an animal"
			
			#List the available animals
			puts "\n"
			$shelter.display_animals
			
			#Ask which one they would like to adopt
			puts "\n"
			puts "Which animal would you like to adopt?"
			$shelter.animals.each do |k, v|
				puts "#{k}"
			end	
			puts "\n"
			name = gets.chomp
			puts "\n"
			puts "You would like to adopt #{name}"

			#Move animal from $shelter.animals{} to client.pets{}









		when "6"
			puts "\n"
			puts "Return an animal"

	end

puts "\n"
puts "Select an option:"
puts "Display animals (1)"
puts "Display clients (2)"
puts "Create animals (3)"
puts "Create clients (4)"
puts "Adopt an animal (5)"
puts "Return an animal (6)"
puts "Quit (7)"

input = gets.chomp.to_s
	
end


