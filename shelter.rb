class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize (name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end

	#prints the Shelter object's attributes in a sentence
	#"HappiTails shelter at 10 East 21st Street has 0 animals and 0 people"
	def to_s
		"#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
	end


end


# The shelter should display all the clients.
# The shelter should display all the animals.
# The shelter should display all the animals.
# Ensure that new animals and clients can be added to the shelter
# Make sure your specs for shelter pass before moving on