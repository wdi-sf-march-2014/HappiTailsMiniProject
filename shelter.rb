require_relative 'animal'
require_relative 'client'
require_relative 'data'

class Shelter
	attr_accessor :name, :address, :animals, :clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		p "#{@name} shelter at #{address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_clients
		client_info = ""
		@clients.each do|k, v|
		client_info += (v.to_s + "\n")
		end
		return client_info.chomp()
	end

	def display_animals
    animal_info = ""
    @animals.each do|k, v|
    animal_info += (v.to_s + "\n")
    end
    return animal_info.chomp()
  end
  
  def create_client
		puts "What is the new client's name?"
    client_name = gets.chomp
    puts "How old is #{client_name}?"
    client_age = gets.chomp.to_i
    puts "Is #{client_name} male or female?"
    client_gender = gets.chomp
    puts "How many kids does #{client_name} have?"
    client_num_kids = gets.chomp.to_i
    @clients[client_name] = Client.new("#{client_name}", client_age, "#{client_gender}", client_num_kids)
  end

  def create_animal
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
  end

  def adopt_animal
  	puts "Who would like to adopt an animal? They must first be a client of the shelter."
    puts "Here are the current clients:"
    self.display_clients
    adopting_client = gets.chomp
    puts "Which animal would #{adopting_client} like to take home?"
    puts "Here are the current animals available for adoption:"
    self.display_animals
    adopted_animal = gets.chomp
    puts "#{adopted_animal} has been adopted by #{adopting_client}!"
  	@clients[adopting_client].pets[adopted_animal] = @animals[adopted_animal]
    @animals.delete(adopted_animal)
  end

  def return_animal
  	puts "Who would like to return an anmimal?"
    self.display_clients
    client_returning = gets.chomp
    puts "\n"
    puts "What animal would #{client_returning} like to put in the shelter?"
    puts "#{client_returning} currently has the following animals:"
    puts "\n"
    puts self.clients[client_returning].pets.keys.join(", ")
    pet_returning = gets.chomp
    puts "#{pet_returning} has been put back in the shelter by #{client_returning}."
  	@animals[pet_returning] = @clients[client_returning].pets[pet_returning] 
    @clients[client_returning].pets.delete(pet_returning)
  end
end