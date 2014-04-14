# require 'hotel_party'
# require 'hotel_lobby'
# require 'freakin_weekend'

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
    # clients.each { |k, v| puts k}    #prints the name only
    people = []
    clients.each { |k, v| 
      people << "#{v.name}: #{v.age} year old #{v.gender} with #{v.number_of_children} children and #{v.pets.length} pets: #{v.pets}".bold
      }
      people_str = people.join("\n")
      puts people_str
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
  end

end