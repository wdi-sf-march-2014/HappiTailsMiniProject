class Client
    attr_accessor :name, :age, :gender, :number_of_children, :pets
     def initialize(name, age, gender, number_of_children)
       @name= name
       @age = age
       @gender = gender
       @number_of_childern = number_of_children
       @pets ={}
       #@client = ""
       
       
       end
       #"Beth is a 30 year old female with 3 kids and 0 pets"
       def to_s
       "#{@name} is a #{@age} year old #{@gender} with #{@number_of_childern} kids and #{@pets.length} pets"
       end
       def display_pets
        pets= ""
		    @pets.each do |k, v|
		 	  pets += (v.to_s + "\n")
		     end
		     return pets.chomp() 
		    end
		     
end

