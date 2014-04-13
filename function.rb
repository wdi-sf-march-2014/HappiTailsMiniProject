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


end

def create_client

end