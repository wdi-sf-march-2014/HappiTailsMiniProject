# require the local files where the classes are defined
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

# Instantiate a Shelter 
$shelter = Shelter.new('HappiTails', '10 East 21st Street')

# Instantiate clients.  Insert them into the shelter's clients hash
$shelter.clients['Bob'] = Client.new('Bob', 22, '123 Main Street', 'Dog')
$shelter.clients['Sue'] = Client.new('Sue', 31, '234 Oak Street', 'Dog')
$shelter.clients['Jil'] = Client.new('Jil', 46, '345 Pine Street', 'Cat')
$shelter.clients['Sam'] = Client.new('Sam', 87, '45 Broadway', 'Cat')

# Instantiate animals.  Insert them into the shelter's animals hash
$shelter.animals['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
$shelter.animals['Spot'].toys << 'Bone'
$shelter.animals['Lassy'] = Animal.new('Lassy', 2, 'female', 'Dog')
$shelter.animals['Lassy'].toys << 'Frisbee'
$shelter.animals['Molly'] = Animal.new('Molly', 5, 'female', 'Cat')
$shelter.animals['Molly'].toys << 'Rope'
$shelter.animals['Fido'] = Animal.new('Fido', 8, 'male', 'Dog')
$shelter.animals['Fido'].toys << 'Chew Toy'
$shelter.animals['Sport'] = Animal.new('Sport', 1, 'male', 'Dog')
$shelter.animals['Sport'].toys << 'Treats'
