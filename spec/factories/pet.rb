FactoryBot.define do
  factory :pet do
    name { Faker::Creature::Dog.name }
    birth_date { DateTime.now - 1.year }
    breed { Faker::Creature::Dog.breed }
    kind { 'dog' }
  end
end