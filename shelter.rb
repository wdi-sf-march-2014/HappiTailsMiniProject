class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
      @name = name
      @address = address
      @animals = {}
      @clients = {}
  	end

  	def to_s
  		puts "#{@name} shelter at #{@address} has #{@} and #{@}"
  	end

   	def display_animals
    	@animals.each { |key, value| puts "#{key}, #{value}" }
  	end

  	def display_clients
  		@clients.each { |key, value| puts "#{key}, #{value}" }
  	end

  	def adopt
  		#takes an animal object from a client and adds it to the shelter
  		

  	end

end

shelter = Shelter.new('HappiTails', '10 east 21st Street')
