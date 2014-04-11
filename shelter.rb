class Shelter
  attr_accessor :name, :address, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}

  end

  def display_clients
    clients = ""
    @clients.each do |key, value| 
      clients += (value.to_s + "\n")
    end
    return clients.chomp()
  end

  def to_s
    "#{name} shelter at #{address} has 0 animals and 0 people"
  end
end