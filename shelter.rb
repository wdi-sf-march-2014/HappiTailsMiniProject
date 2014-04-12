class Shelter
  attr_accessor :name, :address, :clients, :animals, :display_animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}

  end
  def to_s
    "The #{name} shelter at #{address} has #{animals.count} animals and #{clients.count} clients.".center(80)
  end
  def display_clients
    clients = ""
    @clients.each do |key, value| 
      clients += (value.to_s + "\n")
    end
    return clients
  end

  def display_animals
      $shelter.animals.each_value { |v| puts v }
  end

  
end