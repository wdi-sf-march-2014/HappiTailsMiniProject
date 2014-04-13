class Shelter

attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def to_s
     return "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end

  def display_clients
    $shelter.clients.each {|k, v| puts (v.to_s) + "\n"}
    # client_arr = []
    # @clients.each do |k,v|
    # client_arr.push(v.to_s)
    # end
    # client_arr.join("\n")
  end

  def display_animals
    $shelter.animals.each {|k,v| puts (v.to_s) + "\n"}
  #   animals_arr = []
  #   @animals.each do |k, v|
  #   animals_arr.push(v.to_s)
  # end
  #   animals_arr.join("\n")
  end
end
