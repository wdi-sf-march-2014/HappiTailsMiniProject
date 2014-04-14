require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

# Instantiate a Shelter 
$shelter = Shelter.new('HappiTails', '10 east 21st Street')

# Instantiate clients.  Insert them into the shelter's clients hash
$shelter.client['Bob'] = Client.new('Bob', 22, 'male', 0)
$shelter.client['Sue'] = Client.new('Sue', 31, 'female', 2)
$shelter.client['Jil'] = Client.new('Jil', 46, 'female', 1)
$shelter.client['Sam'] = Client.new('Sam', 87, 'male', 3)

# Instantiate animals.  Insert them into the shelter's animals hash
$shelter.animal['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
$shelter.animal['Spot'].toys << 'Bone'
$shelter.animal['Lassy'] = Animal.new('Lassy', 2, 'female', 'Dog')
$shelter.animal['Lassy'].toys << 'Frisbee'
$shelter.animal['Molly'] = Animal.new('Molly', 5, 'female', 'Cat')
$shelter.animal['Molly'].toys << 'Rope'
$shelter.animal['Fido'] = Animal.new('Fido', 8, 'male', 'Dog')
$shelter.animal['Fido'].toys << 'Chew Toy'
$shelter.animal['Sport'] = Animal.new('Sport', 1, 'male', 'Dog')
$shelter.animal['Sport'].toys << 'Treats'