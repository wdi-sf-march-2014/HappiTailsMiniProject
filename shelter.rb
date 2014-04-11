class Shelter 
	attr_accessor :client, :animals

	def initialize(name, address)
		@name = name
		@address = address
		@animals= {}	
		@client = {}
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@client.length} people"
	end

	
	def display_clients
      client = ""
       @client.each do |k,v| 
          client += v.to_s
       end
        return client
	end

	def display_animals
	end

	def adopt
	end

end

