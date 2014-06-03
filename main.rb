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
    $shelter.create_client
  when "ca"
    $shelter.create_animal
  when "aa"
    $shelter.adopt_animal
  when "ra"
    $shelter.return_animal
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

