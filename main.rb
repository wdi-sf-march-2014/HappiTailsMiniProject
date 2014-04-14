# require 'pry'
# require 'rainbow'
require_relative 'data'



puts "Please select option : 'a'-Display all animals, 'b'-Display all clients, 'c'- Create an animal, 'd'- Create a client, 'e'- Adopt an animal, 'f'- Return an animal, 'q'-Quit"
response = gets.chomp

while response != 'Q'.downcase
  case response
	
  	when "a"
  		puts $shelter.display_animals

  	when "b"
  		puts $shelter.display_clients
	when "c"
		$shelter.create_animal
  	when "d"
  		$shelter.create_client

	when 'e'
		$shelter.adopt

	when 'f'
		$shelter.return
end
	


  puts "Please select option : 'a'-Display all animals, 'b'-Display all clients, 'c'- Create an animal, 'd'- Create a client, 'e'- Adopt an animal, 'f'- Return an animal, 'q'-Quit"
  response = gets.chomp
end
