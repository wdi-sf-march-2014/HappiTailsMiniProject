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
      puts "#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys}"   #still need to print what's in the array toys
  end

end

shelter.animals['Sport'] = Animal.new('Sport', 1, 'male', 'Dog')
shelter.animals['Sport'].toys << 'Treats'