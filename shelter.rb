class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end
  
  def to_s
    "#{name} animal shelter - #{address}".center(80)
  end
  
  def display_clients
    $shelter.clients.each_value { |v| puts v }
  end

  def display_animals
    $shelter.animals.each_value { |v| puts v }
  end

  def adopt(animal, client)
    $shelter.clients[client].pets[animal] = $shelter.animals[animal]
    $shelter.animals.delete(animal)  
  end
  def return(animal, client)
    $shelter.animals[animal] = $shelter.clients[client].pets[animal]
    $shelter.clients[client].pets.delete(animal)
  end
end