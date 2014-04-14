#require 'pry'
#require 'rainbow'
require_relative 'data'

100.times{print "*"}
puts "\n"
puts "\n"
puts "\n"
welcome = "This is a cool way to store client and pet data for a shelter!"
puts (welcome).center(100)
puts "\n"
puts "\n"
menu_prompt = "Please select from one of the following options."
puts (menu_prompt).center(100)
puts "\n"
100.times{print "*"}
puts "\n"
menu1 = "\"da\" = display animals   \"dc\" = display clients   \"ca\" = create an animal   \"cc\" = create a client"
puts (menu1).center(100)
menu2 = "\"aa\" = adopt an amimal   \"ra\" = return an animal"
puts (menu2).center(100)
quit = "\"q\" = quit"
puts (quit).center(100)
puts "\n"
puts "Selection:"
response = gets.chomp.downcase

while response != 'q' do
  case response
  when "da"
    $shelter.display_animals
  when "dc"
  	$shelter.display_clients
  when "cc"
  	puts "What is the new client's name?"
    client_name = gets.chomp
    puts "How old is #{client_name}?"
    client_age = gets.chomp.to_i
    puts "Is #{client_name} male or female?"
    client_gender = gets.chomp
    puts "How many kids does #{client_name} have?"
    client_num_kids = gets.chomp.to_i
    $shelter.clients[client_name] = Client.new("#{client_name}", client_age, "#{client_gender}", client_num_kids)

  when "ca"
    puts "What is the new animal's name?"
    animal_name = gets.chomp
    puts "How old is #{animal_name}?"
    animal_age = gets.chomp.to_i
    puts "What kind of animal is #{animal_name}?"
    animal_species = gets.chomp
    puts "Is #{animal_name} male or female?"
    animal_gender = gets.chomp
    $shelter.animals[animal_name] = Animal.new("#{animal_name}", animal_age, "#{animal_gender}", "#{animal_species}")
    puts "Does #{animal_name} have any toys?"
    puts "Enter \"yes\" or \"no\""
    has_toys = gets.chomp.downcase
    while has_toys == "yes"
      if has_toys == "yes"
        puts "Enter the name of the toy, enter \"q\" to finish adding toys."
        puts "New toy:"
        toy = gets.chomp
        $shelter.animals[animal_name].toys << "#{toy}"
        puts "Anymore toys to add?"
        has_toys = gets.chomp.downcase
      else
        has_toys = "no"
      end
    end
  when "aa"
    puts "Who would like to adopt an animal? They must first be a client of the shelter."
    puts "Here are the current clients:"
    $shelter.display_clients
    adopting_client = gets.chomp
    puts "Which animal would #{adopting_client} like to take home?"
    puts "Here are the current animals available for adoption:"
    $shelter.display_animals
    adopted_animal = gets.chomp
    $shelter.adopt_animal(adopting_client, adopted_animal)
    puts "#{adopted_animal} has been adopted by #{adopting_client}!"
  when "ra"
    puts "Who would like to return an anmimal?"
    $shelter.display_clients
    client_returning = gets.chomp
    puts "\n"
    puts "What animal would #{client_returning} like to put in the shelter?"
    puts "#{client_returning} currently has the following animals:"
    puts "\n"
    puts $shelter.clients[client_returning].pets.keys.join(", ")
    pet_returning = gets.chomp
    $shelter.return_animal(client_returning, pet_returning)
    puts "#{pet_returning} has been put back in the shelter by #{client_returning}."
  end
  puts "\n"
  puts "\n"
  100.times{print "*"}
  puts "\n"
  menu1 = "\"da\" = display animals   \"dc\" = display clients   \"ca\" = create an animal   \"cc\" = create a client"
  puts (menu1).center(100)
  menu2 = "\"aa\" = adopt an amimal   \"ra\" = return an animal"
  puts (menu2).center(100)
  quit = "\"q\" = quit"
  puts (quit).center(100)
  puts "\n"
  puts "Selection:"
  response = gets.chomp.downcase
end

