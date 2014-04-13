require 'pry'

class Shelter
  attr_accessor :shelter, :address, :animals, :clients

  def initialize(shelter, address)
    @shelter = shelter
    @address = address
    @animals = {}
    @clients = {}
  end

  def to_s
    "#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"   
  end

  def display_animals
    $shelter.animals.each {|k ,v| puts v.to_s + "\n"}
  end

  def display_clients
    $shelter.clients.each {|k,v| puts v.to_s + "\n"}
  end

  def create_animal(animal_name, age, gender, species)
    @animals.store(new_animal)
    new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
    @animals[animal_name] = new_animal
  end

  def create_client(client_name, age, gender, num_pets)
    new_client = Client.new(client_name, client_age, client_gender, num_pets)
    @clients[client_name] = new_client
  end
  
  # def adopt(client_name, animal_name)
  # 	@clients[client_name].animals[animal_name] = @animals[animal_name]
  # 	@animals.delete(animal_name)
  # 	# puts "Congratulations! #{animal_name} is now a part of your family!"
  # end

  # def return(client_name, animal_name)
  #   @animals[animal_name] = @clients[client_name].animals[animal_name]
  #   @clients[client_name].animals.delete(animal_name)
  # end

end
  # ---------------


# $shelter.clients[client_name].pets[animal_name]=$shelter.animals[animal_name] 
# $shelter.animals.delete(animal_name)

# $shelter.animals[animal_name]=$shelter.clients[client_name].pets[animal_name] 
# $shelter.clients[client_name].pets.delete(animal_name)


  # def display_animals
  #   animals = ""
  #   @animals.each do |k,v| puts v.to_s + "\n"
  #     animals += v.to_s
  #   end
  #   return animals.chomp
  # end

  # def display_clients
  #   clients = ""
  #   @clients.each do |k,v|
  #   clients += v.to_s
  #   end
  #   return clients.chomp
  # end 

  



# describe ".display_animals" do
#     it "prints the Shelter's Animals" do
#     end
#   end

#   describe ".display_clients" do
#     it "prints the Shelter object's Clients" do
#       client = Client.new("Beth", 30, "female", 3)
#       @shelter.clients[client.name.to_sym] = client
#       expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
#     end
#   end
# describe ".to_s" do
#     it "prints the Shelter object's attributes in a sentence" do
#       expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
#     end
#   end
# -------
# class Shelter

# 	attr_accessor :shelter, :address, :animals, :clients

# 	def initialize(shelter, address)
# 		@shelter = shelter
# 		@address = address
# 		@animals = {}
# 		@clients = {}
# 	end

# 	def to_s
# 		"#{@shelter} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} clients"
# 	end

# 	def display_clients
# 		puts "The shelter currently has the following clients: "
#  		$shelter.clients.each { |k, v| puts (v.to_s) + "\n" }

#  	end

#  	def display_animals
#  		puts "The shelter currently has the following animals: "
#     $shelter.animals.each { |k, v| puts (v.to_s) + "\n" }

#   end

#   def adopt(client_name, pet_name)
#   	@clients[client_name].animals[pet_name] = @animals[pet_name]
#   	@animals.delete(pet_name)
#   	puts "Congratulations! #{pet_name} is now a part of your family!"
#   end

#   def return(client_name, pet_name)
#   	@animals[pet_name] = @clients[client_name].animals[pet_name]
#   	@clients[client_name].animals.delete(pet_name)
#   	puts "#{pet_name} has been returned to the shelter. You're a bad person."
#   end

# end

#   # def return(client_name, pet_name)
#   # 	@animals[pet_name] = @clients[client_name].animals[pet_name]
#   # 	@clients[client_name].animals.delete(pet_name)
#   # 	puts "#{pet_name} has been returned to the shelter. You're a bad person."
#   # end

  
  

#   # def create_animal(animal_name, age, gender, species)
#   #   @animals.store(new_animal)
#   #   new_animal = Animal.new(animal_name, animal_age, animal_gender, species)
#   #   @animals[animal_name] = new_animal
#   # end

#   # def create_client(client_name, age, gender, num_pets)
#   #   new_client = Client.new(client_name, client_age, client_gender, num_pets)
#   #   @clients[client_name] = new_client
#   # end

#   # def adopt(client_name, animal_name)
#   #   @clients[client_name].animals[animal_name] = @animals[animal_name]
#   #   @animals.delete[animal_name]
#   # end

#   # def return_animal(client_name, animal_name)
#   #   @animals[animal_name] = @clients[client_name].animals[animal_name]
#   #   @clients[client_name].animals.delete(animal_name)
#   # end


# # ------------------
# # 