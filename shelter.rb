class Shelter

attr_accessor :client, :animals

def initialize(name, address)
@client = {}
@animals = {}
@name = name
@address = address

end

def to_s
"#{@name} shelter at 10 East 21st Street has #{@animals.length} animals and #{client.length} people"
end

def display_clients
client = ""
@client.each do |k, v|
client += v.to_s
end
return client

def display_animals
end

def adopt
end
end

end
