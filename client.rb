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
	 pet = ""
   @pets.each do |k, v|
     pet += (v.to_s + "\n")
   end
   return pet.chomp
  end
end