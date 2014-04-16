class Shelter
	
	def initialize(animals, address)
		@animals = animals
		@address = address
		@clients = {}
	end

	def to_s
		"#{@animals} shelter at #{@address} has 0 animals and 0 people"     
	end
end