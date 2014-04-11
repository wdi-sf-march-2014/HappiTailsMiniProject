class Shelter

  attr_accessor :name, :address, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
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

end

# it "prints the Shelter object's Clients" do
#       client = Person.new("Beth", 30, "female", 3)
#       @shelter.clients[client.name.to_sym] = client
#       expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")



