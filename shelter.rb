
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
      people << "#{v.name}: #{v.age} year old #{v.gender} with #{v.number_of_children} children and #{v.pets.length} pets.".bold
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

  def adopt(client_to_adopt, animal_to_adopt)
    puts $shelter.display_clients
    $shelter.clients[client_to_adopt].pets[animal_to_adopt] = $shelter.animals[animal_to_adopt]
    $shelter.animals.delete(animal_to_adopt) 
    puts ""
    puts "#{$shelter.clients[client_to_adopt].pets[animal_to_adopt].name} has been successfully adopted by #{$shelter.clients[client_to_adopt].name}.".bold.colorize( :red )
  end

  def return(client_to_return, animal_to_return)
    $shelter.animals[animal_to_return] = $shelter.clients[client_to_return].pets[animal_to_return]
    $shelter.clients[client_to_return].pets.delete(animal_to_return)
    puts ""
    puts "#{$shelter.clients[client_to_return].name} has just returned #{$shelter.animals[animal_to_return].name}.".bold.colorize( :red ) 
    puts "That animal will likely be put down now..."
  end

  def kill(animal_to_kill)
    $shelter.animals.delete(animal_to_kill) 
    puts "#{$shelter.animals[animal_to_kill]} has been put down."
    puts 
    puts "==================================="
    puts "=============        =============="
    puts "===========            ============"
    puts "==========   x      x   ==========="
    puts "==========              ==========="
    puts "==========              ==========="
    puts "==========              ==========="
    puts "===========            ============"
    puts "=====  =====          =====  ======"
    puts "=======  ====  ||||  =====  ======="
    puts "==========  ============  ========="
    puts "=============  =======  ==========="
    puts "================  ==  ============="
    puts "==================  ==============="
    puts "===============  =====  ==========="
    puts "============  ==========  ========="
    puts "=========  ===============  ======="
    puts "======  =====================  ===="
    puts "==================================="
    puts "==================================="
    puts "==================================="
  end
end   #class end