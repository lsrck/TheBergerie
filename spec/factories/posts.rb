FactoryBot.define do
  factory :post do
    user
    title { Faker::Cannabis.strain }
    content { Faker::StrangerThings.quote }
    preview { Faker::HarryPotter.quote }
  end
end
