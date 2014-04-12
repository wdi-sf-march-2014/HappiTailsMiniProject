class Clients

  attr_accessor :name, :age, :gender, :kids, :pets_number

  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets_number = 0
    @pets = []

  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@kids} kids and #{@pets_number} pets"
  end

  # def display_pets
  #   @pets.each {|pet| print pet.name}
  #   # prints "Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves "
  # end

# Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves ")

end

# bety = Client.new('Beth', 30, 'female', 3)
# puts bety.to_s