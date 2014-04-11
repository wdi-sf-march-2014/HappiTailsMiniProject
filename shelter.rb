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
  		animals = ""
  		@animals.each do |k,v|
  			animals += (v.to_s + "\n")
  		end
  		return animals.chomp
  	end
  
  	def display_clients
  		
  		clients = ""

  		@clients.each do |k,v|
  			clients += (v.to_s + "\n")
  		end

  		return clients.chomp

  	end
  	#FIX THIS
  	def adopt()

  		#takes an animal object from a client and adds it to the shelter
  		# for pet in client
  		# 	@animals client.pets 
  	end

  	def return()
  	end
end