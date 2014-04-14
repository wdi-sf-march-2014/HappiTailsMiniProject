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
		puts "Please enter name:"
		animal_name = gets.chomp
		puts "Please enter age:"
		animal_age = gets.chomp.to_i
		puts "Please enter gender:"
		animal_gender = gets.chomp
		puts "Please enter species:"
		animal_species = gets.chomp
		new_animal = Animal.new(animal_name, animal_age, animal_gender, animal_species)
		$shelter.animals[animal_name] = new_animal
		puts "Animal created: #{animal_name}, #{animal_age}, #{animal_gender}, #{animal_species}" 
  
  	when "d"
  		puts "Please enter name:"
		client_name = gets.chomp
		puts "Please enter age:"
		client_age = gets.chomp.to_i
		puts "Please enter gender:"
		client_gender = gets.chomp
		puts "Please enter number of children:"
		client_children = gets.chomp.to_i
		new_client = Client.new(client_name, client_age, client_gender, client_children)
		$shelter.clients[client_name]= new_client
		puts "Client created: #{client_name}, #{client_age}, #{client_gender}, #{client_children}" 
	

		when 'e'
		puts "Who would like to adopt a pet?"
		puts $shelter.display_clients
		client = gets.chomp.capitalize
		puts "Who would #{client} want to adopt?"
		puts $shelter.display_animals
		choice = gets.chomp.capitalize
		$shelter.adopt(choice)
		puts "Congratulations! #{client} now the proud master of #{choice}. "

		when 'f'
		puts "Please enter adopted pet's name for return:"
		pet_name = gets.chomp
		puts "You have returned #{pet_name}"
	end
	


  puts "Please select option : 'a'-Display all animals, 'b'-Display all clients, 'c'- Create an animal, 'd'- Create a client, 'e'- Adopt an animal, 'f'- Return an animal, 'q'-Quit"
  response = gets.chomp
end
