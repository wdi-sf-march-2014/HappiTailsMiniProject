class Client 

  attr_accessor :name, :age, :gender, :num_children, :num_pets, :pets

  def initialize(name, age, gender, num_children, num_pets)
    @name = name
    @age = age
    @gender = gender
    @num_children = num_children
    @num_pets = num_pets
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@num_pets} pets"  
  end

  def display_pets
  	pets = ""
  	@pets.each do |k,v|
  		pets += (v.to_s + "\n")
  	end
  	return pets.chomp
  end
  
end

