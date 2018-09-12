FactoryBot.define do
  factory :user do
    username { Faker::StarWars.character }
    email { Faker::Internet.email }
    password { "bonjour" }
  end
end
