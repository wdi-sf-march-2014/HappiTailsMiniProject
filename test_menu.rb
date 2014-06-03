require 'rainbow'

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
100.times{Rainbow(print "*").bright}
puts "\n"
menu = "\"da\" = display animals   \"dc\" = display clients   \"ca\" = create an animal   \"cc\" = create a client"
puts (menu).center(100)
quit = "\"Q\" = Exit"
puts (quit).center(100)
puts "\n"
puts "Selection:"
response = gets.chomp