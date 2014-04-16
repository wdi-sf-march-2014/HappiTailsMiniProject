# require 'pry'

# require 'rainbow'
# require_relative 'data'

menu_str_1 = "To Display all: (a)nimals, (c)lients"
menu_str_2 = "To Create: an a(n)nimal, a c(l)ient"
menu_str_3 = "To Adopt: a(d)opt an animal"
menu_str_4 = "To Return: r(e)turn an animal"

puts
puts "Welcome to Happi Trails Shelter"
puts
puts "Menu:"
puts
puts menu_str_1 + "\n" + menu_str_2 + "\n" + menu_str_3 + "\n" + menu_str_4
# puts
# puts
# puts "Display all: (a)nimals, (c)lients; Create: an a(n)nimal, a c(l)ient"

response = gets.chomp.downcase

	while response != "q"
	  case response
		  when "a"
		  	shelter.display_animals
	  	  when "c"
	  	  	puts "Display all clients"
	  	  	@client = Client.new('Beth', 30, 'female', 3)
		  when "n"
		  	puts "Create an animal"
		    @animal = Animal.new("Tiny", 3, "male", "cat")
	  	  when "l"
	  	  	puts "Create a client"
	  	  	@client = Client.new('Beth', 30, 'female', 3)
		  when "d"
		  	puts "Adopt an animal"
		    @animal = Animal.new("Tiny", 3, "male", "cat")
	  	  when "e"
	  	  	puts "R(e)turn an animal"
	  	  	@client = Client.new('Beth', 30, 'female', 3)
	  end
	  puts "Display all: (a)nimals, (c)lients"
	  response = gets.chomp
	end
    puts "Goodbye."
