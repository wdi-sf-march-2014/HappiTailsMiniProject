require_relative 'animal'
require_relative 'client'
require_relative 'data'

class Shelter
	attr_accessor :name, :address, :animals, :clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		p "#{@name} shelter at #{address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_clients
		client_info = ""
		@clients.each do|k, v|
		client_info += (v.to_s + "\n")
		end
		return client_info.chomp()
	end

	def display_animals
    animal_info = ""
    @animals.each do|k, v|
    animal_info += (v.to_s + "\n")
    end
    return animal_info.chomp()
  end
end