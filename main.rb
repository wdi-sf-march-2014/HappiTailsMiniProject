require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

puts "\n"
puts $shelter.to_s
puts "\n"

puts "Please choose one of the following options:
		(da) display all animals
		(dc) display all clients
		(ca) Create an animal
		(cc) Create a client
		(aa) adopt an animal
		(ra) return an animal
		(q) quit program"

response = gets.chomp.downcase

while response != 'q'

	case response

	when "da"
		# display all the animal objects 
		# in the shelter animals hash
		puts "\n"
		$shelter.display_animals

	when "dc"
		# display all the client objects 
		# in the shelter clients hash
		puts "\n"
		$shelter.display_clients
		
	when "ca"
		# create an animal object and add it 
		# to the shelter animals hash
		$shelter.create_animal

	when "cc"
		# create a client object and add it 
		# to the shelter clients hash
		$shelter.create_client

	when "aa"
		# allow a client to adopt an animal 
		# thereby removing it from the shelter
		# animals hash, and adding it to the 
		# client pets hash 
		$shelter.adopt  

	when "ra"
		# allow a client to return an animal
		# thereby removing it from the client 
		# pets hash, and adding it to the shelter
		# animals hash
		$shelter.return

end

puts "\n"
puts $shelter.to_s
puts "\n"

puts "Please choose one of the following options:
	(da) display all animals
	(dc) display all clients
	(ca) Create an animal
	(cc) Create a client
	(aa) adopt an animal
	(ra) return an animal
	(q) quit program"
response = gets.chomp.downcase

end
