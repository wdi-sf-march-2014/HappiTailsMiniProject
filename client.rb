class Client 
	attr_accessor :name, :age, :gender, :num_children, :pets

	def initialize(name, age, gender, num_children)
		@name = name
		@gender = gender
		@num_children = num_children
		@age = age
		@pets = {}
	end

	def to_s
    "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@pets.length} pets"
  end

  def display_pets
    pet_info = []
    @pets.each { |key,val| pet_info.push(val.to_s) }
    pet_info.join("\n")

  end

end