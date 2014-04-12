require 'pry'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

puts "Welcome to the HappiTails Shelter.\nWhat would you like to do?\n
	1 to display animals\n
	2 to display clients\n
	3 to intake a new animal\n
	4 to register a new client"
response = gets.chomp

while response != 'Q'
	case response
	when "1"
		puts shelter.display_animals
	when "2"
		puts shelter.display_clients
	when "3"
		puts "What is the animal's name?"
		animal_name = gets.chomp
		puts "How old is this animal?"
		animal_age = gets.chomp
		puts "Is this animal male or female?"
		animal_gender = gets.chomp
		puts "What species in this animal?"
		species = gets.chomp

		shelter.intake(animal_name, animal_age, animal_gender, species)
		puts "Intake Confirmed"
		puts shelter.animals[animal_name.to_sym]
	when "4"

	end
end


  # response = #set this equal to something