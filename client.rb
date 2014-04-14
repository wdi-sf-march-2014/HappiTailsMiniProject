
class Client

  attr_accessor :name, :number_of_children, :age, :gender, :pets

  def initialize(name, age, gender, number_of_children)
    @name = name
    @age = age
    @gender = gender
    @number_of_children = number_of_children
    @pets = {}
    end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender} with #{@number_of_children} kids and #{pets.length} pets"
  # expect(@client.to_s).to eql("Beth is a 30 year old female with 3 kids and 0 pets")
  end

  def display_pets
  pets_name = []
  @pets.each do |k, v| pets_name.push(v.to_s)
    end
  return pets_name.join("\n")
  end

end