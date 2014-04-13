def menu_options()
  puts
  puts "Please choose one of the following options:".center(80)
  puts
  puts "(a) display all animals".ljust(40) + "(c) create an animal".ljust(40)
  puts "(b) display all clients".ljust(40) + "(d) create a client".ljust(40)
  puts 
  puts "(q) quit"
  puts
end

def response()
	@response = gets.chomp.downcase
end

def logo()
puts"          ,.                                       "
puts"         /  `-._                                   "
puts"        /       `.     ___            __           "
puts"      ,'       _/ ,---'   `-.       ,'  `.         "
puts"     /   /`---'\\/           `--.  /       \\        "
puts"    /   |       /             _  `/  -.    `.      "
puts"   \\   |              ,.    /O\\\\   \\        \\     "
puts"    \\   `.           /O\\  '   `. `. /\\     ||     "
puts"      `._  `-.       /   ,   .    ,  `. \\  ,'     "
puts"         `-.        .   /     `--'    \\ \\/       "
puts"           \\        `-',d8o8b.        /           "
puts"            \\          dP'88`8b      /            "
puts"  HappiTails \\  ,'`.     `YP'       |             "
puts"  Animal      \\/ .        |       | |             "
puts"  Shelter      /  |\\       :       |/\\           "
puts"              /   | `.   ,:::     /\\  \\            "
puts"             ,\       `-'`""'`.--'  )o )           "
puts"            (o `.__,               / o/            "
puts"            \\ o  \\_           ,-'o /             "
puts"             \\  o  o`-----.__,' o ,'              "
puts"               `----. o  o  o  o ,'                "
puts"                     `----------'                  "
end