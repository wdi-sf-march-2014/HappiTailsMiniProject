class Client

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :number_of_children, :age, :pets


  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, gender, number_of_children)
        @name = name
        @age = age
        @gender = gender
        @number_of_children = number_of_children
        @pets ={}
  end
    
  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  # def to_s
     def to_s

        "#{@name} is a #{@age} year old #{@gender} with #{@number_of_children} kids and #{@pets.length} pets"
      end

  
   def display_pets
     pets = ""
      @pets.each do |k,v| 
         pets += (v.to_s + "\n")
        end
        return pets.chomp

    end
   end
end
