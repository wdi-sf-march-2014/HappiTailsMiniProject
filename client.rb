class Client 

  attr_accessor :name, :age, :gender, :kids, :pets

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



# 		pets = ""
 #		@pets.each do |k, v|
 #		pets += (v.to_s + "\n")
 #	end
 #	return pets.chomp	