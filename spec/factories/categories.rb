FactoryBot.define do
  factory :category do
    name { %w(Actualité Art/Culture Cinéma Musique).sample }
  end
end
