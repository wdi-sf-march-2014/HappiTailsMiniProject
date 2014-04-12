# - Client:
# 	- A client should have a name.
# 	- A client should have a number of children.
#   - A client should have a gender.
# 	- A client should have an age.
# 	- A client should have pets.

class Client 

	attr_accessor :name, :age, :gender, :children, :pets, :animals

  def initialize(name, age, gender, children)
    @name = name
    @age = age
    @gender = gender
    @children = children
    @pets = {}
    @animals ={}
  end

 def to_s
 	"#{@name} is a #{@age} year old #{@gender} with #{@children} kids and #{@pets.length} pets"
 end

 def display_pets
 	pets = ""
 	@pets.each do |k, v|
 		pets += (v.to_s + "\n")
 	end
 		return pets.chomp
 end



end

