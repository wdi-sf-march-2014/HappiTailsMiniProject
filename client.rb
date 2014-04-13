class Client
  attr_accessor :name, :age, :client_address, :adoption_preference, :pets

  def initialize(name, age, client_address, adoption_preference)   
    @name = name
    @age = age
    @client_address = client_address
    @adoption_preference = adoption_preference
    @pets = {}
  end

  def to_s
    "#{name} - #{age} years old, lives at #{client_address}, would like to adopt a #{adoption_preference}"
  end
end