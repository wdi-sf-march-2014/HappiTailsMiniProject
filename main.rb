
# #main is used for user input only
require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
#binding.pry

# $shelter = Shelter.new()

  puts `clear`
  puts "Welcome to the Happi Tails Animal Shelter"
  puts "Please select from the following options: "
  puts '(1) List Animals'
  puts '(2) List Clients'
  puts '(3) Add your animal into our database'
  puts '(4) Add your information into our database'
  #delete animal from shelter and add animal to client
  puts '(5) Adopt an animal from our shelter'
  # delete_animal from clients and add to shelter
  puts '(6) Return an animal to our shelter'
  puts '(7) Exit'

  def menu
  end

  choice = gets.chomp

  while choice != "7"
  case choice
  when "1"
    $shelter.display_animals
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"   
  when "2"
    $shelter.display_clients
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"  
  when "3"
    puts "Please enter animal's name: "
    animal_name = gets.chomp
    puts "How old is your animal? "
    animal_age = gets.chomp
    puts "What is the gender of your animal? "
    animal_gender = gets.chomp
    puts "What kind of animal is it?"
    species = gets.chomp
    new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
    $shelter.animals[new_animal.name] = new_animal
    puts "#{animal_name} has been added to our Shelter" 
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"  
    # p new_animal
  when "4"
    puts "Please enter your name: "
    client_name = gets.chomp
    puts "Please enter your age: "
    client_age = gets.chomp
    puts "Please enter your gender: "
    client_gender = gets.chomp
    puts "How many pets do you have?"
    num_pets = gets.chomp
    new_client = Client.new(client_name, client_age, client_gender, num_pets)
    puts "Thanks #{client_name}. You have been added to our database."
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"  
    # $shelter.clients[new_client.name] = new_client
    # p new_client
  when "5"
    puts "What is your name?"
    client_name = gets.chomp
    puts "Thank you. Here are the animals available at the Shelter:"
    $shelter.display_animals
    puts
    puts "Please type the name of the animal you want to adopt:"
    puts
    animal_name = gets.chomp
    # $shelter.adopt(client_name,animal_name)
      if $shelter.clients[client_name] == $shelter.clients[client_name] &&  animal_name == $shelter.animals[animal_name] 
            $shelter.animals.delete(animal_name)
      else animal_name != $shelter.animals[animal_name]
        puts "Sorry, we didn't recognize that animal name. Can you please type again?"
        animal_name = gets.chomp
      end
    puts "Awesome! #{animal_name} can't wait to play with you!"
    puts "Make another choice or type 7 to quit: "
    break unless choice != "7"  
    # puts "Congratulations! #{animal_name} sends you lots of love!"
    # $shelter.clients[client_name].animals[animal_name] = $shelter.animals[animal_name]
    # $shelter.animals.delete(animal_name) 
  when "6"
   puts "Sorry to hear you want to return an animal. "
   puts "What is the name of the pet you are returning? "
   animal_name = gets.chomp
   puts "What is your name?"
   client_name = gets.chomp
   new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
   $shelter.animals[new_animal.name] = new_animal
     if $shelter.clients[client_name] == $shelter.clients[client_name]
           $shelter.animals.merge(@animals => new_animal)
    end
   puts
   puts "#{animal_name} has been added back into our Shelter."
   puts "We hope you have a better experience finding the perfect animal next time. Your support is deeply appreciated. "
   puts
   puts "Make another choice or type 7 to quit: "
   break unless choice != "7"  
  #  puts "You are all done! We hope to see you again."
  # $shelter.animals[animal_name] = $shelter.clients[client_name].animals[animal_name]
  # $shelter.clients[client_name].animals.delete(animal_name)
  when "7"
  puts "Thanks for visiting"
  end

  choice = gets.chomp
    if choice == 7
      break
    else
      menu 
    end
 end

