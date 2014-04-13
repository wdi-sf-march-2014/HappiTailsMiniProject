require 'pry'
# require 'rainbow'
require_relative "data"
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

menu = <<PARAGRAPH
\nWELCOME TO THE HAPPITAILS SHELTER APP!\n\n
What would you like to do:\n\n
Enter '1' to display all animals.\n\n
Enter '2' to display all clients.\n\n
Enter '3' to add a new animal to the shelter.\n\n
Enter '4' to add a new client to the shelter.\n\n
Enter 'Q' to quit.
PARAGRAPH
print menu
response = gets.chomp.upcase
while response != "Q"

	case response
		when "1"
		$shelter.display_animals
		when "2"
		$shelter.display_clients
		# unit_num = gets.chomp
		# new_apartment = Apartment.new(unit_num)
		# new_building.apartments[unit_num] = new_apartment 
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
		puts "Thank you. The animal has now been added to the shelter database."
		$shelter.animal[:animal_name] = new_animal
		# new_tenant = Tenant.new(name)
		# puts "which apartment does this tenant live in?"
		# new_building.apartments.each do |unit, apartment|
		# puts unit
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
		puts "Thank you. Your new client has been added to the database."
		$shelter.client[:client_name] = new_cient 


	end
	puts `clear`
	print menu
	response = gets.chomp.upcase
	# response = gets.chomp
	#new_building = A building object
	#new_building.apartments = A hash of apts {"102" => Apartment.new()}
	# new_building.apartments[unit_num].tenants = hash of tenants {"name" => Tenant.new}
	# new_building.apartments[unit_num].tenants[name] = Tenant.new
	# # new_building.apartments[unit_num].tenants[name] = new_tenant
	# new_building.apartments[unit_num].tenants[name] = new_tenant
	# else
	# puts "nothing"
	# end 
	# puts "Create (b)uilding (t)enant (a)partment, (q)uit"
	# response = gets.chomp
	# end
end


# response = gets.chomp
# while response != 'Q'
#   ##Fill in code here
  
#   response = #set this equal to something
# end
