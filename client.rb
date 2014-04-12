class Client 

  attr_accessor :name, :age, :gender, :pets, :kids

  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = {}
  end 

	def to_s
		"#{@name} is a #{@age} year old #{@gender} with #{@kids} kids and #{@pets.count} pets"
	end


	def display_pets
	 pets = ""
   @pets.each do |k, v|
   pets += (v.to_s + "\n")
   end
   return pets.chomp
  end
end

#Tiny is a 3 year old male cat that loves

#{@building.address}
#iterate through the hash and pull out the name
#new_building.apartments.each do |unit, apt|

# def to_s
#     "This building has #{@apartments.count} apartments."
#   end