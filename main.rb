require 'pry'
# require 'rainbow'
require_relative 'data'

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

response = gets.chomp.downcase #set this equal to something


while response != 'q'
  ##Fill in code here

	case response
	when "da"
		
		 $shelter.display_animals

	when "dc"
		
		$shelter.display_clients
		

	when "ca"
		
		$shelter.create_animal
			
	when "cc"
		
		$shelter.create_client

	when "aa"

		 $shelter.adopt 
		 
	when "ra"
		$shelter.return

end


  puts "Please choose one of the following options:
		(da) display all animals
		(dc) display all clients
		(ca) Create an animal
		(cc) Create a client
		(aa) adopt an animal
		(ra) return an animal
		(q) quit program"
  	response = gets.chomp.downcase
  	#set this equal to something
end
