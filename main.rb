#main is used for user input only
require 'pry'
require 'rainbow'
require_relative 'data'
require_relative 'animal'
require_relative 'shelter'
require_relative 'client'

#binding.pry


  puts `clear`
  puts "Welcome to the Happi Tails Animal Shelter"
  puts "Please select from the following options: "
  puts '(1) List Animals'
  puts '(2) List Clients'
  #(3)creates animal 
  puts '(3) Add your animal into our database' 
  #(4) creates client
  puts '(4) Add your information into our database'
  #(5) = delete_animal from Shelter & add_animal to Client
  puts '(5) Adopt an Animal from our Shelter'
  # (4) = delete_animal from Clients & add_animal to Shelter
  puts '(6) Return an animal to our Shelter'
  puts '(7) to Quit'
def menu
end

choice = gets.chomp
while choice != '7'
  case choice
  when "1"
    puts "Our animals up for adoption are as follows: "
    puts
    $shelter.display_animals
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"
  when "2"
    puts "Here's a list of our clients: "
    puts
    $shelter.display_clients
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"
  when "3"
    print "Please enter the animal's name: "
    animal_name = gets.chomp
    print "Please enter the animal's age: "
    animal_age = gets.chomp
    print "Please enter the animal's gender: "
    animal_gender = gets.chomp
    print "What kind of animal is it? "
    species = gets.chomp
    new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
    $shelter.animals[new_animal.name] = new_animal
  	puts "#{animal_name} has been added to our Shelter."
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"	
  when "4"
    print "Please enter your name: "
    client_name = gets.chomp
    print "Please enter your age: "
    client_age = gets.chomp
    print "Please enter your gender: "
    client_gender = gets.chomp
    print "How many pets do you have: "
    num_pets = gets.chomp
    new_client = Client.new(client_name, client_age, client_gender, num_pets)
    puts "Thanks #{client_name}. You have been added to our database. "
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"
  when "5"
    puts "What is your name?"
		client_name = gets.chomp
		puts "Thank you. Here are the animals that are up for adoption: "
		$shelter.display_animals
		puts
		puts "Please type the name of the Animal you want to adopt: "
		animal_name = gets.chomp
		  if $shelter.clients[client_name] == $shelter.clients[client_name] &&  $shelter.animals[animal_name] == $shelter.animals[animal_name] 
		        $shelter.animals.delete(animal_name)
      end
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"
  when "6"
   puts "Sorry to hear you want to return an animal. "
   puts "What's your name? "
   client_name = gets.chomp
	 puts "What is the name of the pet you are returning? "
	 print "Please enter the animal's name: "
   animal_name = gets.chomp
   print "Please enter the animal's age: "
   animal_age = gets.chomp
   print "Please enter the animal's gender: "
   animal_gender = gets.chomp
   print "What kind of animal is it? "
   species = gets.chomp
   new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
   $shelter.animals[new_animal.name] = new_animal
	   if $shelter.clients[client_name] == $shelter.clients[client_name]
	         $shelter.animals.merge(@animals => new_animal)
    end
   puts
   puts "#{animal_name} has been added to our Shelter."
   puts
   puts "Make another choice or type 7 to quit: "
    break unless choice != "7" 
   when "7"
    puts "Thank you for visiting"
   end
   choice = gets.chomp
   	if choice == 7
   		break
   	else
   		menu 
   	end
end
#menu




