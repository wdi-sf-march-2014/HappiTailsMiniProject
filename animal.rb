# Define Animal as a class
# Animal:

# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :gender, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, gender, species)
    @name = name 
    @age = age
    @gender = gender
    @species = species
    @toys = []

  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s 
    "#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ")}"
  end
end


# # ========== TEST =============

# cat = Animal.new("Tiny", 3, "male", "cat")
# cat.toys = ["mice","string"]
# cat.to_s