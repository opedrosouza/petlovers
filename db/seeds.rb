puts '---CREATING PETS---'
10.times.each do 
  Pet.create(name: Faker::Creature::Dog.name, birth_date: DateTime.now - 1.year, breed: Faker::Creature::Dog.breed, kind: 'dog' )
  Pet.create(name: Faker::Creature::Cat.name, birth_date: DateTime.now - 1.year, breed: Faker::Creature::Cat.breed, kind: 'cat' )
end