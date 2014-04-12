class Shelter

  attr_accessor :name, :address, :clients, :display_animals, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}

  end

  def to_s
    "#{name} shelter at #{address} has 0 animals and 0 people"  
  end

  def display_clients
    clients = ""
    @clients.each do |key, value| 
      clients += (value.to_s + "\n")
    end
    return clients.chomp()
  end

  def display_animals
    animals.each_key { |k| puts k }
    # "#{name} is a #{age} year old #{gender} #{species} that loves #{toys.join(", ")}"
    return
  end

  def adopt
  end

end