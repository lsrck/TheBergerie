FactoryBot.define do
  factory :category do
    id { [1, 2, 3, 4].sample }
    name { %w(Actualité Art/Culture Cinéma Musique).sample }
  end
end
