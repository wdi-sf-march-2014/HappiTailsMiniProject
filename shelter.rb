class Shelter
	attr_accessor :shelter, :address, :animals, :client

	def initialize(shelter, address)
		@shelter = shelter
		@address = address
		@animals = {}
		@client = {}
	end

	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@client.length} people"		
	end

 	def display_animals
 		animals = ""
 		@animals.each do |k,v|
 			animals += v.to_s
 		end
 		return animals.chomp
 	end

 	def display_clients
 		client = ""
 		@client.each do |k,v|
 		client += v.to_s
 		end
 		return client.chomp
 	end 

 	def adopt
 	end


end

# describe ".adopt" do
  #   it "takes an Animal object from a Client and adds it to the shelter" do
  #   end
  # end

# describe ".display_animals" do
 #    it "prints the Shelter's Animals" do
 #    end
 #  end

	# describe ".display_clients" do
 #    it "prints the Shelter object's Clients" do
 #      client = Client.new("Beth", 30, "female", 3)
 #      @shelter.clients[client.name.to_sym] = client
 #      expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
 #    end
 #  end
# describe ".to_s" do
  #   it "prints the Shelter object's attributes in a sentence" do
  #     expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
  #   end
  #end