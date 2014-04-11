require 'pry'
#require 'rainbow'
require_relative 'names'
require_relative 'data'

print "Please choose an option: Display all animals, Display all clients, Create an animal, Create a client, or Q: "
response = gets.chomp

	if response == "Q"

		print "It's over!"
  
  	elsif response == "Display all animals"
  	
  		puts $shelter.display_animals

 	elsif response == "Display all clients"
  	
  		puts $shelter.display_clients

  	elsif response == "Create an animal"
  	
  		print "What is the animal's name? "
  		name = gets.chomp

  		#Run through the list of names
  		for male_name in male_names
  			for female_name in female_names
  				if male_name == name && female_name == name
  					print "What is #{name}'s gender? "
  					gender = get.chomp
  				elsif male_name == name
  					gender = "Male"
  				elsif female_name == name
  					gender = "Female"
  				else
  					print "What is #{name}'s gender? "
  					gender = get.chomp
  				end
  			end
  		end

  		print "How old is #{name}? "
  		age = gets.chomp

  		print "What would you like the animal's species to be? "
  		species = gets.chomp
	
  		new_animal = Animal.new(name, age, gender, species)
	
  		puts "#{new_animal}"

 	elsif response == "Create a client"

 		print "What is the client's name? "
 		name = gets.chomp
 		print "What would you like the client's age to be? "
 		age = gets.chomp
 		print "What would you like the client's gender to be? "
 		gender = gets.chomp
 		print "What would you like the client's number of children to be? "
 		num_children = gets.chomp

 		new_client = Client.new(name, age, gender, num_children)

 		puts "#{new_client}"

 	end
