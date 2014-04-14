def display_animals
	puts "\nAnimals at the shelter: "
	puts $shelter.display_animals

	puts "\nClients' Animals: "
	
	any_animals = false
	$shelter.clients.each do |client_name, client_object|
	 	if client_object.pets.length > 0
	 		any_animals = true
	 		puts "#{client_object.name} has #{client_object.pets.length} pet: #{client_object.display_pets}"
	 	end
	end

	if any_animals == false
		puts "There are no client animals."
	end

	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp

end

def display_clients
	puts "\nClients at the shelter: "
	puts $shelter.display_clients

	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp

end

def create_animal
	puts "We are always looking for new animals! What's this animal's name?"
	animal_name = gets.chomp

	puts "How old is #{animal_name}?"
	animal_age = gets.chomp.to_f

	puts "Is #{animal_name} male or female?"
	animal_gender = gets.chomp

	puts "What kind of animal is #{animal_name}?"
	animal_species = gets.chomp

	puts "Finally, does #{animal_name} have any favorite toys?"
	animal_toy = gets.chomp

	animal_new = Animal.new(animal_name, animal_age, animal_gender, animal_species)
	animal_new.toys.push(animal_toy)
	$shelter.animals[animal_name] = animal_new

	puts "We are excited to have #{animal_name} join the HappiTails Shelter! Our records reflect that #{animal_new.to_s}."



	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp
end

def create_client
	puts "We are always looking for new clients and homes for our animals! What is the client's name?"
	client_name = gets.chomp

	puts "How old is #{client_name}?"
	client_age = gets.chomp.to_f

	puts "What is #{client_name}'s gender?"
	client_gender = gets.chomp

	puts "Does #{client_name} have any kids living with them?"
	client_kids = gets.chomp
		if client_kids == "yes"
			puts "How many kids are living with #{client_name}?"
			client_kids = gets.chomp.to_f
		else
			client_kids = 0
		end
	puts "Finally, does #{client_name} have any pets we should know of?"
	client_answer = gets.chomp
		if client_answer == "yes"
			puts "How many?"
			client_pets = gets.chomp.to_f
		end

	client_new = Client.new(client_name, client_age, client_gender, client_kids)
	$shelter.clients[client_name] = client_new

	puts "We are delighted to meet #{client_name}! Our records reflect that #{client_new.to_s}."

	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp

end

def adopt_animal
	puts "\nWe're delighted you are interested in adopting! \nHere is a list of the animals at our shelter: \n#{$shelter.display_animals}"
	print "\nPlease tell us the name of the animal you wish to adopt: "
	adopt_response = gets.chomp

	puts "\nWhich client will be adopting? \n#{$shelter.display_clients}"
	client_response = gets.chomp

	$shelter.clients[client_response].pets[adopt_response] = $shelter.animals[adopt_response]
	$shelter.animals.delete(adopt_response)

	puts "#{client_response} is now the proud owner of #{adopt_response}."

	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp
end

def return_animal
	puts "\nWe are so sad you are returning! Please tell us the name of the animal you are returning: "
	animal_return = gets.chomp

	puts "Can you remind us of your name?"
	client_return = gets.chomp

	$shelter.animals[animal_return] = $shelter.clients[client_return].pets[animal_return]
	$shelter.clients[client_return].pets.delete(animal_return)

	puts "#{animal_return} has been returned to the shelter."

	print "\nPress enter to return to main menu... "
	user_answer = gets.chomp

end