require 'pry'
# require 'rainbow'
require_relative 'data'

puts $shelter.name

puts "Type one of these: 
			'da' for display animals, 
			'dc' for display clients,
			'ca' for create animal,
  			'cc' create client,
  			'a' adopt an animal,
			'r' return an animal
			'Q' to end"
response = gets.chomp#set this equal to something
puts 

while response != 'Q'
  ##Fill in code here
  	case response
		when "da" 
  			puts "Displaying animals"
  			$shelter.display_animals
  		when "dc"
			puts "Displaying clients"	
			$shelter.display_clients			
		when "ca"
			puts "Creating animal"
			puts "Name?"
			name = gets.chomp
			puts "Age?"
			age = gets.chomp
			puts "Gender?"
			gender = gets.chomp
			puts "Species?"
			species = gets.chomp
			$shelter.create_animal(name, age, gender, species)
			puts "#{name} successfully created"
			puts
  		when "cc"
			puts "Creating client"
			puts "Name?"
			name = gets.chomp
			puts "Age?"
			age = gets.chomp
			puts "Gender?"
			gender = gets.chomp
			puts "Number of kids?"
			kids = gets.chomp
  			$shelter.create_client(name, age, gender, kids)
  			puts "#{name} successfully created"
  			puts
		when "a"
			# to make is simply I'll ignore cases when possibly 2 animals could have the same name. Same with clients
			puts "Adopting animal"
			puts "Animal name?"
			name = gets.chomp
			puts "Client name?"
			client = gets.chomp
			$shelter.adopt_animal(name, client)
			puts "#{name} successfully adopted by #{client}"
  			puts
		when "r"
			puts "Returning animal"
			puts "Animal name?"
			name = gets.chomp
			$shelter.return_animal(name)
			puts "#{name} successfully returned"
  			puts
  	end
  puts
  # puts $shelter.to_s
  # p $shelter.shelter
  # puts
  puts "Type one of these: 
			'da' for display animals, 
			'dc' for display clients,
			'ca' for create animal,
  			'cc' create client,
  			'a' adopt an animal,
			'r' return an animal
			'Q' to end"
  response = gets.chomp #set this equal to something
  puts

end
