load 'client.rb'

class Shelter

attr_accessor :name, :address, :clients, :shelter

def initialize(name, address)
	@name = name
	@address = address
	@clients = {}
end

def to_s
	"#{name} shelter at #{address} has 0 animals and 0 people"
end

def display_clients

	clients_arr = []
	@clients.each { |key, value|
	clients_arr << "#{value.name} is a #{value.age} year old female with #{value.num_children} kids and #{value.num_pets} pets"
	}
	clients_str = clients_arr.join("\n")
	#this is almost correct not sure about the \n
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
