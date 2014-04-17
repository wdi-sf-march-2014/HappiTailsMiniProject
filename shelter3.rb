require_relative 'animal'
require_relative 'client'

class Shelter

  attr_accessor :name, :address, :clients, :display_animals, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}

  end

  def to_s
    "#{name} shelter at #{address} has #{animals.length} animals and #{clients.length} people"  
  end

  def display_clients
      summaries = @clients.map do |key, client|
      client
    end
    summaries.join "\n"  end
    # clients.each { |k, v| puts k}    #prints the name only
    # people = []
    # clients.each { |k, v| 
    #   people << "#{v.name}: #{v.age} year old #{v.gender} with #{v.number_of_children} children and #{v.pets.length} pets.".bold
    #   }
    #   people_str = people.join("\n")
    #   puts people_str
  end

  def display_animals
    # animals.each { |k, v| puts k}    #prints the name only
    creatures = []
    animals.each { |k, v| 
      creatures << "#{v.name} the #{v.species}".bold
      }
      creatures_str = creatures.join("\n")
      puts creatures_str
    return
  end

  def adopt
    puts "What animal is up for adoption?"
    animals.each { |k, v| puts k }
    puts ""
    animal_to_adopt = gets.chomp

    puts "What client is adopting this animal?"
    clients.each { |k, v| puts k }
    puts ""
    client_to_adopt = gets.chomp
 
    clients[client_to_adopt].pets[animals[animal_to_adopt]] = animals[animal_to_adopt]
    animals.delete(animal_to_adopt)
    puts "#{client_to_adopt} successfully adopted #{animal_to_adopt}.".bold.colorize( :red )
    puts ""

  end

  def returns
  puts "Which client is returning an animal?"
  animals_to_return = {}
  clients.each_key { |k|
    if clients[k].pets != {}
      puts clients[k]
      animals_to_return[clients[k].name] = clients[k] 
    end
    }
    if animals_to_return == {} 
      puts "No clients have animals to return.".bold
      client_to_return = gets.chomp 
    end

  puts "Which animal is being returned?"
  $shelter.clients[client_to_return].pets.each do |key, value|
    puts value
  end
  animal_to_return = gets.chomp
  animals[animal_to_return.to_s] = clients[client_to_return].pets[animal_to_return.to_s]
  clients[client_to_return].pets.delete(animal_to_return)
  puts "#{client_to_return} has returned #{animal_to_return}.".bold
end


end   #class end