class Animal

  attr_accessor :name, :age, :gender, :species, :toys

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



# - Animal:
#   - An animal should have a name.
#   - An animal should have an age.
#   - An animal should have a gender.
#   - An animal should have a species.
#   - An animal can have multiple toys.