require_relative 'data'

puts "Welcome to HappiTrailsAnimal Shelter!"
p '*' * 80
puts "Please chose an option"
puts "To create and Animal Type CA"
puts "To create a Client Type CC"
puts "To Display all Animals Type DA"
puts "To Display all Clients Type DC"
puts "To Adopt an Animal Type AA"
puts "To return an Animal type RA"
puts "If you would like to Quite Type Q"
p '*' * 80

def repromt
  p '-' * 80
puts "Please chose an option"
puts "To create and Animal Type CA"
puts "To create a Client Type CC"
puts "To Display all Animals Type DA"
puts "To Display all Clients Type DC"
puts "To Adopt an Animal Type AA"
puts "To return an Animal type RA"
puts "If you would like to Quite Type Q"
  
  p '-' * 80
response = gets.chomp.upcase
end

response = gets.chomp.upcase

while response != 'Q'
 

  if response ==  "DA"
    puts "Display animals"
    puts $shelter.display_animals
  end

  if response == "DC"
    puts "Display clients"
    puts $shelter.display_clients
  end

  if response ==  "CA"
    puts "What is the animal's name?"
    animal_name = gets.chomp
    puts "How old is this animal?"
    animal_age = gets.chomp
    puts "Is this animal male or female?"
    animal_gender = gets.chomp
    puts "What species in this animal?"
    species = gets.chomp

    $shelter.intake(animal_name, animal_age, animal_gender, species)
    puts "Intake Confirmed"
    puts $shelter.animals[animal_name]
  end

  if response == "CC"
    puts "What is the client's name?"
    client_name = gets.chomp
    puts "How old is the client?"
    client_age = gets.chomp
    puts "Is the client male or female?"
    client_gender = gets.chomp
    puts "How many children does the client have?"
    num_children = gets.chomp

    $shelter.new_client(client_name, client_age, client_gender, num_children)
    puts "Registration Confirmed"
    puts $shelter.clients[client_name]
  end
  if response ==  "AA"
    puts "Which client is adopting today?"
    client_name = gets.chomp
    puts "Which animal are they adopting?"
    animal_name = gets.chomp

    $shelter.adopt(client_name, animal_name)
    puts "Adoption Confirmed"
  end
  if response ==  "RA"
    puts "Which client is returning today?"
    client_name = gets.chomp
    puts "Which animal are they returning?"
    animal_name = gets.chomp

    $shelter.return(client_name, animal_name)
    puts "Return Confirmed"
  end
  p repromt
end

