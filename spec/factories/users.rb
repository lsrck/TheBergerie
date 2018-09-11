FactoryBot.define do
  factory :user do
    username { Faker::StarWars.character }
    email { Faker::Internet.email }
    password { Faker::WorldOfWarcraft.quote.first(10) }
  end
end
