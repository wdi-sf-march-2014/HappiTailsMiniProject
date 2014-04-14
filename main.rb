require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

menu = <<PARAGRAPH
\nWELCOME TO THE HAPPITAILS SHELTER APP!\n\n
What would you like to do:\n\n
Enter '1' to display all animals.\n
Enter '2' to display all clients.\n
Enter '3' to add a new animal to the shelter.\n
Enter '4' to add a new client to the shelter.\n
Enter '5' to adopt an animal.\n
Enter '6' to return an animal to the shelter.\n
Enter 'Q' to quit.
PARAGRAPH
print menu

response = gets.chomp.upcase

while response != "Q"

	case response
		when "1"
		  puts "Here are the animals currently at the shelter:\n\n"
		  puts $shelter.display_animals
		  puts
		  puts
		  puts $shelter.to_s
		when "2"
	      puts "Here are our current clients:\n\n"
		  puts $shelter.display_clients
		  puts
		  puts
		  puts $shelter.to_s
		when "3" 
		  puts "Please enter the name of the animal you would like to add to the shelter."
		  animal_name = gets.chomp.capitalize
		  puts "Please enter the age of the animal you are adding to the shelter."
		  animal_age = gets.chomp.to_i
		  puts "Please enter the gender of the animal."
		  animal_gender = gets.chomp.downcase
		  puts "Please enter the species of the animal."
		  animal_species = gets.chomp.capitalize
		  new_animal = Animal.new(animal_name, animal_age, animal_gender, animal_species)
		  puts "Does this animal love any toys? If so enter the name of the toy below."
		  new_animal.toys << gets.chomp
		  puts "Thank you. The animal has now been added to the shelter database.\n\n"
		  $shelter.animal[:animal_name] = new_animal
		  new_animal.to_s
		  puts $shelter.display_animals
		when "4"
		  puts "Please enter the first name of the new client you would like to add."
		  client_name = gets.chomp.capitalize
		  puts "Please enter the age of the client."
		  client_age = gets.chomp.to_i
		  puts "Please enter the gender of the client ('male' or 'female')"
		  client_gender = gets.chomp.downcase
		  puts "Please enter the number of childeren of the new client."
		  client_num_children = gets.chomp.to_i
		  new_client = Client.new(client_name, client_age, client_gender, client_num_children)
		  puts "Thank you. Your new client has been added to the database.\n\n"
	      $shelter.client[:client_name] = new_client
	      new_client.to_s
	      puts $shelter.display_clients
	    when "5"
	      puts "Good news! A pet is being adopted.\n"
	      puts "Please enter the name of the client who is adopting an animal."
	      client_name = gets.chomp.capitalize
	      puts "Please enter the name of the pet that is being adopted."
	      pet_name = gets.chomp.capitalize
	      puts "Thank you, #{client_name} is now the proud owner of #{pet_name}."
	      $shelter.adopt(client_name, pet_name)
	      puts $shelter.to_s
	    when "6"
	      puts "We're sorry that an animal is being returned.\n"
	      puts "Please enter the animal being returned."
	      pet_name = gets.chomp.capitalize
	      puts "Please enter the name of the client who is returning the animal." 
	      client_name = gets.chomp.capitalize
	      puts "Thank you, #{pet_name} has now been put back into the shelter database."
	      $shelter.return(client_name, pet_name)
		when "Q"
		  puts "Thank you for using the Happitails app."
	end


  print menu
  response = gets.chomp.upcase
end
