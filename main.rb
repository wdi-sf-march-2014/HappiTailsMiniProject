require 'pry'
require_relative 'data'
require_relative 'names'

welcome_menu = 
[
  "",
  "================================================",
  "Welcome to the Animal Shelter Management System!",
]

puts welcome_menu

menu_of_options =
[
  "================================================",
  "Please choose an option:",
  "-------------------------",
  "Enter 1 to display all animals",
  "Enter 2 to display all clients",
  "Enter 3 to create an animal",
  "Enter 4 to create a client",
  "Enter 5 for an animal adoption",
  "Enter 6 for an animal return",
  "Enter 7 to quit at any time","\n"
]
puts menu_of_options.join("\n")
response = gets.chomp
puts "================================================"

while response != "7"

  if response == "1"

    puts $shelter.display_animals

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"

  elsif response == "2"

    puts $shelter.display_clients

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"

  elsif response == "3"

    print "What is the animal's name? "
    name = gets.chomp.capitalize

    if Names.male_names.include? name
      gender = "Male"
    elsif Names.female_names.include? name
      gender = "Female"
    else
      print "Is #{name} male or female? "
      gender = gets.chomp 
    end

    print "How old is #{name}? "
    age = gets.chomp

    print "What is #{name}'s species? "
    species = gets.chomp

    print "What is #{name}'s favorite toy? "
    toy = gets.chomp

    $shelter.animals[name] = Animal.new(name, age, gender, species)
    $shelter.animals[name].toys << toy

    puts "========================================="
    puts "Great! I have added #{name}'s information to the system!"

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"

  elsif response == "4"

    print "What is the new client's name? "
    name = gets.chomp
    print "How old is #{name}? "
    age = gets.chomp
    print "Is #{name} male or female? "
    gender = gets.chomp.downcase
    print "How many children does #{name} have? "
    num_children = gets.chomp
    print "How many pets does #{name} have? "
    num_pets = gets.chomp
    puts "========================================="

    new_client = Client.new(name, age, gender, num_children, num_pets)

    print "Okay, so #{new_client}. Is that right? "
    reply = gets.chomp.downcase

    puts
    if reply == "yes"
      print "Fantastic. I have added #{name}'s information to the system!"
    elsif reply == "no"
      print "Oh no! Please go the options menu and enter 3 again."
    else
      print "That is not a valid choice. Taking you back to the options menu..."
    end
    puts

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"

  elsif response == "5"

    print "Great! Which animal is going to be adopted? "  
    animal_name = gets.chomp.capitalize
    print "Okay! And which client is going to adopt #{animal_name}? "
    client_name = gets.chomp

    $shelter.clients[client_name].pets[animal_name] = $shelter.animals[animal_name]
    $shelter.clients[client_name].num_pets += 1
    $shelter.animals.delete(animal_name)

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"
  
  elsif response == "6"
    
    print "Aw, which client is returning an animal? "
    client_name = gets.chomp
    print "Okay, and which animal is #{client_name} returning? "
    animal_name = gets.chomp

    $shelter.animals[animal_name] = $shelter.clients[client_name].pets[animal_name] 
    $shelter.clients[client_name].pets.delete(animal_name)
    $shelter.clients[client_name].num_pets -= 1

    puts menu_of_options.join("\n")
    response = gets.chomp
    puts "================================================"

  end

end
