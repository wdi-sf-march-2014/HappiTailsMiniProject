
# #####Phase 2
# - Create your Shelter Class
#   - Ensure that new animals and clients can be added to the shelter
#   - Make sure your specs for shelter pass before moving on

# - Shelter:
# 	- The shelter should display all the clients.
# 	- The shelter should display all the animals.
require_relative "data"


class Shelter

	attr_accessor :shelter, :address, :animals, :clients

	def initialize(shelter, address)
		@shelter = shelter
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} clients"
	end
		
		def display_clients
 			$shelter.clients.each { |k, v| puts (v.to_s) + "\n" }
 		end

 	 def display_animals
      $shelter.animals.each { |k, v| puts (v.to_s) + "\n" }
  	end

end

#