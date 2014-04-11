class Shelter

  attr_accessor :name, :address 

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}

  end

  def display_clients

  end

  def to_s
    "#{name} shelter at #{addres} has 0 animals and 0 people"
  end

end

("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
("Beth is a 30 year old female with 3 kids and 0 pets")

