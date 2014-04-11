class Client 

  attr_accessor :name, :age, :gender, :num_children, :pets

  def initialize(name, age, gender, num_children)
    @name = name
    @age = age
    @gender = gender
    @num_children = num_children
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@pets.length} pets"  
  end
	#FIX THIS
  def display_pets
  	"Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves "
  end
end

