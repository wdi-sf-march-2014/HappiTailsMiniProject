class Shelter 

  attr_accessor :name, :address, :clients, :animals 

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end 

  def to_s
  	"#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end

  def display_animals
    "#{@animals}"
  end

  #Beth is a 30 year old female with 3 kids and 0 pets
  def display_clients
    # "#{client[0]} is a #{clients[1]} year old #{clients[2]} with #{clients[3]} kids and #{animals.count} pets"
           # "#{v.name} is a #{v.age} year old #{v.gender} with #{v.kids} kids and #{v.pets.count} pets \n"

    client = []
    @clients.each do |k, v|
    client.push(v.to_s)
    end
    return client.join("\n")
  end

end

