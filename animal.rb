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
    if gender == "male"
      pronoun = "his"
    elsif gender == "female"
      pronoun = "her"
    end
    "#{name} - #{age} year old #{gender} #{species}, loves #{pronoun} #{toys.join(", ")}."
  end
end
  