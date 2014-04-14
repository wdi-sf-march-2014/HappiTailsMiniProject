class Animal
  attr_accessor :animal_name, :animal_age, :animal_gender, :species, :toys

  def initialize(animal_name, animal_age, animal_gender, species)
    @animal_name = animal_name
    @animal_age = animal_age
    @animal_gender = animal_gender
    @species = species
    @toys = []
  end

  def to_s
    "#{@animal_name} is a #{@animal_age} year old #{@animal_gender} #{@species} that loves #{@toys.join(", ")}"
  end
end