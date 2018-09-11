FactoryBot.define do
  factory :post do
    title { Faker::Cannabis.strain }
    content { Faker::StrangerThings.quote }
    preview { Faker::HarryPotter.quote }
  end
end
