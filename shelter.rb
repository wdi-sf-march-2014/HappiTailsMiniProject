
# #####Phase 2
# - Create your Shelter Class
#   - Ensure that new animals and clients can be added to the shelter
#   - Make sure your specs for shelter pass before moving on


# - Shelter:
# 	- The shelter should display all the clients.
# 	- The shelter should display all the animals.

class Shelter

	attr_accessor :shelter, :address, :animals, :client

	def initialize(shelter, address)
		@shelter = shelter
		@address = address
		@animals = {}
		@client = {}
	end

	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@client.length} clients"
	end

	def display_clients
 	client = ""
 	@client.each do |k, v|
 		client += (v.to_s + "\n")
 	end
 		return client.chomp
 	end

end



# "HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")