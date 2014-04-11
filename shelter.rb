require_relative 'animal'
require_relative 'client'

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
end