class Animal
  attr_accessor :name, :age, :sex, :species, :toys

  def initialize(name, age, sex, species)
    @name = name
    @age = age
    @sex = sex
    @species = species
    @toys = []
  end

  def to_s
    if sex == "male"
      pronoun = "his"
    elsif sex == "female"
      pronoun = "her"
    end
    "#{name} - #{age} year old #{sex} #{species}, loves #{pronoun} #{toys.join(", ")}."
  end
end
  