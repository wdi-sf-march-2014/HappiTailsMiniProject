def menu_options()
	puts
	puts
	puts
	puts
	puts
  puts "Please choose one of the following options:".center(80)
  puts
  puts "(a) display all animals".ljust(40) + "(b) display all clients".ljust(40)
  puts "(c) create an animal".ljust(40) + "(d) create a client".ljust(40)
  puts "(adopt) an animal".ljust(40) + "(return) an animal".ljust(40)
  puts
  puts "(q) quit"
  puts
end

def response()
	@response = gets.chomp.downcase
end

def logo()
puts"          ,.                                       ".center(80)
puts"         /  `-._                                   ".center(80)
puts"        /       `.     ___            __           ".center(80)
puts"      ,'       _/ ,---'   `-.       ,'  `.         ".center(80)
puts"     /   /`---'\\/           `--.  /       \\        ".center(80)
puts"    /   |       /             _  `/  -.    `.      ".center(80)
puts"   \\   |              ,.    /O\\\\   \\        \\     ".center(80)
puts"    \\   `.           /O\\  '   `. `. /\\     ||     ".center(80)
puts"      `._  `-.       /   ,   .    ,  `. \\  ,'     ".center(80)
puts"         `-.        .   /     `--'    \\ \\/       ".center(80)
puts"           \\        `-',d8o8b.        /           ".center(80)
puts"            \\          dP'88`8b      /            ".center(80)
puts"  HappiTails \\  ,'`.     `YP'       |             ".center(80)
puts"  Animal      \\/ .        |       | |             ".center(80)
puts"  Shelter      /  |\\       :       |/\\           ".center(80)
puts"              /   | `.   ,:::     /\\  \\            ".center(80)
puts"             ,\       `-'`""'`.--'  )o )           ".center(80)
puts"            (o `.__,               / o/            ".center(80)
puts"            \\ o  \\_           ,-'o /             ".center(80)
puts"             \\  o  o`-----.__,' o ,'              ".center(80)
puts"               `----. o  o  o  o ,'                ".center(80)
puts"                     `----------'                  ".center(80)
puts
end