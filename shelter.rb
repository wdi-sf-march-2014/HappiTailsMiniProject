class Shelter
	attr_accessor :name, :address, :clients, :animals
	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end

	def to_s
		return "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"

	end

	def display_clients
		clients.values.join("\n")
	end

	# describe ".display_clients" do
 #    it "prints the Shelter object's Clients" do
 #      client = Person.new("Beth", 30, "female", 3)
 #      @shelter.clients[client.name.to_sym] = client
 #      expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
 #    end
 #  end

	def display_animals
		animals.join("\n")
	end

	def adopt
		animal += shelter
	end

	# describe ".adopt" do
 #    it "takes an Animal object from a Client and adds it to the shelter" do
 #    end
  

	# describe ".to_s" do
 #    it "prints the Shelter object's attributes in a sentence" do
 #      expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
 #    end
 #  end
end