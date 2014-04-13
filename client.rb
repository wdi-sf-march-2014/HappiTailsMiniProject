# - Client:
# 	- A client should have a name.
# 	- A client should have a number of children.
#   - A client should have a gender.
# 	- A client should have an age.
# 	- A client should have pets.

class Client 

	attr_accessor :client_name, :age, :gender, :children, :animals

  def initialize(client_name, age, gender, children)
    @client_name = client_name
    @age = age
    @gender = gender
    @children = children
    @animals ={}
  end

  def num_pets
  	animals.length
  end

 def to_s
 	"#{@client_name} is a #{@age} year old #{@gender} with #{@children} kids and #{num_pets} pets"
 end

 def display_pets
 	pets = ""
 	@pets.each do |k, v|
 		pets += (v.to_s + "\n")
 	end
 		return pets.chomp
 end



end

