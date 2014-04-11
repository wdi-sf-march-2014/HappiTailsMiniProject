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
      "#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ")}"  #still need to print what's in the array toys
  end

end

# animal = Animal.new("Tiny", 3, "male", "cat")
# animal.toys = ["mice", "string"]
# animal.to_s