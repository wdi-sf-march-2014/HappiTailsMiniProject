
# #####Phase 2
# - Create your Shelter Class
#   - Ensure that new animals and clients can be added to the shelter
#   - Make sure your specs for shelter pass before moving on

# - Shelter:
# 	- The shelter should display all the clients.
# 	- The shelter should display all the animals.


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
		puts "The shelter currently has the following clients: "
 		$shelter.clients.each { |k, v| puts (v.to_s) + "\n" }

 	end

 	def display_animals
 		puts "The shelter currently has the following animals: "
    $shelter.animals.each { |k, v| puts (v.to_s) + "\n" }

  end

  def adopt(client_name, pet_name)
  	@clients[client_name].animals[pet_name] = @animals[pet_name]
  	@animals.delete(pet_name)
  	puts "Congratulations! #{pet_name} is now a part of your family!"
  end

  def return(client_name, pet_name)
  	@animals[pet_name] = @clients[client_name].animals[pet_name]
  	@clients[client_name].animals.delete(pet_name)
  	puts "#{pet_name} has been returned to the shelter. You're a bad person."
  end

end

#