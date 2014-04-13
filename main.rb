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
puts "Quit (5)"

input = gets.chomp.to_s

while input != "5"

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
			
	end

puts "\n"
puts "Select an option:"
puts "Display animals (1)"
puts "Display clients (2)"
puts "Create animals (3)"
puts "Create clients (4)"
puts "Quit (5)"

input = gets.chomp.to_s
	
end


