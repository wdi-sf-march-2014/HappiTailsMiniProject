class Client < Animal

  attr_accessor :name, :age, :gender, :number_of_children, :pets, :gender

  def initialize(name, age, gender, number_of_children)   
    @name = name
    @age = age
    @gender = gender
    @number_of_children = number_of_children
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@number_of_children} kids and #{@pets.length} pets"   #female hard code?
  end

  def display_pets
    pets = ""
    @pets.each do |key, value| 
      empty_string += (value.to_s + "\n")
    end
    return pets.chomp()
    # "#{value.name} is a #{value.age} year old #{value.gender} #{value.species} that loves "
    # "Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves "
   end
end

