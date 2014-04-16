
require_relative 'client'
require_relative 'animal'

class Shelter
    attr_accessor :name, :address, :clients, :animals
   def initialize(name, address)
       @name = name
       @address = address
       @clients = {}
       @animals ={}
    end
    def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
    end
    
     def display_clients
            clients= ""
		    @clients.each do |k, v|
		 	  clients += (v.to_s + "\n")
		     end
		     return clients.chomp() 
		    end
 
    
 end
