class Shelter

	attr_accessor :client, :animal

		def initialize(name, address)
			@client = {}
			@animal = {}
			@name = name
			@address = address
		
		end

		def to_s
			puts "#{@name} shelter at 10 East 21st Street has #{@animals.length} animals and #{client.length} people"
		end

		def display_clients
			client = ""
		 @client.each do |k, v|
		 	client += v.to_s
		 	return client
		 	puts client
		end

		def display_animals
			animal = ""
		 @animal.each do |k, v|
		 	animal += v.to_s + " "
		 	return animal
		 	puts animal
		end
		def adopt(pet_name, client_name)
			pet_name = animal.fetch("name")
			animal.delete("name")
			@client[:name][:pets] = pet_name
		end
	end
end

end