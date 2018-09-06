FactoryBot.define do
  factory :post do
    title { Faker::Cannabis.strain }
    content { Faker::StrangerThings.quote }
  end
end
