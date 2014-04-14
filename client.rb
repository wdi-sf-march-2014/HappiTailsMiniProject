class Client 
	attr_accessor :client_name, :client_age, :client_gender, :num_children, :pets

	def initialize(client_name, client_age, client_gender, num_children)
		@client_name = client_name
		@client_gender = client_gender
		@num_children = num_children
		@client_age = client_age
		@pets = {}
	end

	def to_s
    "#{@client_name} is a #{@client_age} year old #{@client_gender} with #{@num_children} kids and #{@pets.length} pets"
  end

  def display_pets
    pet_info = []
    @pets.each { |key,val| pet_info.push(val.to_s) }
    pet_info.join("\n")

  end

end