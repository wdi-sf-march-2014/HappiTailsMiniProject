require 'pry'
#require 'rainbow'
require_relative 'data'

puts "Select an option:"

puts "Display animals (1)"
puts "Display clients (2)"
puts "Create animals (3)"
puts "Create clients (4)"
puts "Quit (5)"

input = gets.chomp.to_s

while input != "5"

	case input
		when "1"
			$shelter.display_animals
			puts $shelter.address
			# puts "Display animals"
		when "2"
			puts "Display clients"
			puts $shelter.display_clients
		
		when "3"
			puts "Create animals"
		
		when "4"
			puts "Create clients"
			
	end

puts "Select an option:"

puts "Display animals (1)"
puts "Display clients (2)"
puts "Create animals (3)"
puts "Create clients (4)"
puts "Quit (5)"

input = gets.chomp.to_s
	
end


