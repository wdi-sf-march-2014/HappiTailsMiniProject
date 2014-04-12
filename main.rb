require 'pry'

require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
require_relative 'data'
#binding.pry
puts "=" * 80
puts "Welcome to HappiTails".center(80)
puts "=" * 80

puts $shelter

#def menu_options
	puts
	puts "Please choose one of the following options:".center(80)
	puts
	puts "(a) display all animals".ljust(40) + "(c) create an animal".ljust(40)
	puts "(b) display all clients".ljust(40) + "(d) create a client".ljust(40)
	puts 
	puts "(q) quit"
	puts
	puts @response = gets.chomp!
#end

#menu_options

while @response != 'q'
	case @response
		when "a"
			puts
			puts "All animals:"
			puts '------------'
			$shelter.display_animals
			puts
		when "b"
		when "c"
		when "d"
		else 
			puts "Please select an option from above (a, b, c, d, or q):"
  	end
   	#menu_options
end
#puts "*" * 80