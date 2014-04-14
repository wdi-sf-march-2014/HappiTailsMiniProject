require 'pry'
require 'rainbow'
require_relative 'data'
require_relative 'function'


response = []
while response != 'Q'
  ##Fill in code here

  puts "\nMain Menu"
  puts "1. Display all animals"
  puts "2. Display all clients"
  puts "3. Create an animal"
  puts "4. Create a client"
  puts "5. Adopt an animal"
  puts "6. Return an animal"
  puts "Q to quit"
  print "\nPlease select an option: 1, 2, 3, 4, 5 or 6:  "

  response = gets.chomp

  if response == "1"
  	display_animals
  elsif response == "2"
  	display_clients
  elsif response == "3"
  	create_animal
  elsif response == "4"
  	create_client
  elsif response == "5"
  	adopt_animal
  elsif response == "6"
  	return_animal
  end

end





	