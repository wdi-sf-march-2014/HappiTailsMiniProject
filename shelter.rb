load 'client.rb'

class Shelter

attr_accessor :name, :address, :clients, :shelter, :animals

def initialize(name, address)
	@name = name
	@address = address
	@clients = {}
	@animals = {}
end

def to_s
	"#{name} shelter at #{address} has #{animals.length} animals and #{clients.length} clients"
end

def display_clients

	clients_arr = []
	#puts "num_pets #{clients.num_pets}"
	#puts "pets #{clients.pets}"
	@clients.each { |key, value|
	clients_arr << "#{value.name} is a #{value.age} year old #{value.gender} with #{value.num_children} kids and #{@num_pets} pets"
	}
	puts clients_str = clients_arr.join("\n")
	#this is almost correct not sure about the \n
end

def display_animals
	puts "Here is a list of the animals and their descriptions: "
	animals_arr = []
	@animals.each { |key, value|
	animals_arr << "#{value.name} is a #{value.age} year old #{value.gender} and is a #{value.species}"
	}
	puts animals_str = animals_arr.join("\n")

end

def adopt
	puts "Who is adopting the animal?"
	display_clients
	client_to_adopt = gets.chomp 
	
	puts "What animal would you like to adopt"
	display_animals
	animal_to_adopt = gets.chomp
	#puts clients[client_to_adopt].pets
	puts "Entered into the hash #{animals[animal_to_adopt]}"
	clients[client_to_adopt].pets[animals[animal_to_adopt].name.to_s]= animals[animal_to_adopt]
	animals.delete(animal_to_adopt)
	puts "Congrats. #{client_to_adopt} has adopted #{animal_to_adopt}"
	#puts clients[client_to_adopt].pets[animals[animal_to_adopt].name]
	#puts animals

	#puts clients[client_to_adopt].pets
end

 def returns
	puts "Who is returning the animal?"
	animals_to_return = {}
	clients.each_key { |key|
		if clients[key].pets != {}
			puts clients[key]
			animals_to_return[clients[key].name] = clients[key] 
		end
	}
	if animals_to_return == {} 
		puts "No Animals to Return"
	else
	#puts animals_to_return
	end
	client_to_return = gets.chomp 
	
	puts "What animal would you like to return"
	$shelter.clients[client_to_return].pets.each do |key, value|
	puts value
	end
	animal_to_return = gets.chomp
	#puts "1"
	#p clients[client_to_return].pets[animal_to_return.to_sym]
	#clients[client_to_return].pets[animal_to_return.to_sym].name.to_sym
	#p [clients[client_to_return].pets[animal_to_return]]
	#puts "2"
	#puts animals
	#puts clients[client_to_return].pets
	animals[animal_to_return.to_s] = clients[client_to_return].pets[animal_to_return.to_s]
	clients[client_to_return].pets.delete(animal_to_return)
	#puts animals
	#puts clients[client_to_return].pets
	#This is the adopt code
	#clients[client_to_adopt].pets[animals[animal_to_adopt].name.to_sym]= [animals[animal_to_adopt]]
	#clients.pets.delete(animal_to_return)

	puts "Awwww Shucks. #{client_to_return} has returned #{animal_to_return}"

 end
end



# shelter = Shelter.new('HappiTails', '10 East 21st Street')
# puts shelter
# client = Client.new("Beth", 30, "female", 3)
# client2 = Client.new("Amy", 40, "male", 4)
# shelter.clients[client.name.to_sym] = client
# shelter.clients[client2.name.to_sym] = client2
# #puts shelter.clients
# puts shelter.display_clients

# describe Shelter do

#   before :each do
#     @shelter = Shelter.new('HappiTails', '10 East 21st Street')
#   end

#   describe "#new" do
#     it "takes two parameters and returns a Shelter object" do
#       expect(@shelter).to be_an_instance_of(Shelter)
#     end
#   end

#   describe ".to_s" do
#     it "prints the Shelter object's attributes in a sentence" do
#       expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
#     end
#   end

#   describe ".display_animals" do
#     it "prints the Shelter's Animals" do
#     end
#   end

#   describe ".display_clients" do
#     it "prints the Shelter object's Clients" do
#       client = Person.new("Beth", 30, "female", 3)
#       @shelter.clients[client.name.to_sym] = client
#       expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
#     end
#   end

#   describe ".adopt" do
#     it "takes an Animal object from a Client and adds it to the shelter" do
#     end
#   end

# end
