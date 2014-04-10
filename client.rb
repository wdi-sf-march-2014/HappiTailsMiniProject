class Client < Person

  attr_accessor :name, :age, :gender, :num_children, :pets

  def initialize(name, age, gender, num_children)
    @name = name
    @age = age
    @gender = gender
    @num_children = num_children
    @pets = {}
  end

  def to_s
    puts "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@pets.length} pets"  
  end

  def display_pets
    @pets.each { |key, value| puts "#{key}, #{value}" }
  end

end

shelter.clients['Bob'] = Person.new('Bob', 22, 'male', 0)