# Define Animal as a class
class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = []
  end 

  def to_s
    "#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ")}"
  end
end

#{@name} is a #{@age} year old #{@gender} #{@species} that loves 
#bear = Animal.new("name", "age", "gender", "species")
#bear.to_s
#"Tiny is a 3 year old male cat that loves mice, string"