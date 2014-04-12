class Client
  attr_accessor :name, :age, :gender, :number_of_children, :pets

  def initialize(name, age, gender, number_of_children)   
    @name = name
    @age = age
    @gender = gender
    @number_of_children = number_of_children
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@number_of_children} kids and #{@pets.length} pets"
  end

  def display_pets
    pets = ""
    @pets.each do |key, value| 
      pets += (value.to_s + "\n")
    end
    return pets.chomp
   end
end