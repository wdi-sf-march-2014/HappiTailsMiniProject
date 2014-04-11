class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
      @name = name
      @address = address
      @animals = {}
      @clients = {}
  	end

  	def to_s
  		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  	end

   	def display_animals
  		
  	end

  	def display_clients
  		"Beth is a 30 year old female with 3 kids and 0 pets"
  	end

  	def adopt(client)
  		#takes an animal object from a client and adds it to the shelter
  		# for pet in client
  		# 	@animals client.pets 
  	end

end

#shelter = Shelter.new('HappiTails', '10 east 21st Street')
#shelter.clients['Bob'] = Client.new('Bob', 22, 'male', 0)
#shelter.animals['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
