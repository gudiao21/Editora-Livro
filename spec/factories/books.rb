FactoryBot.define do
  factory :book do
    name { Faker::Book.title }

    author
  end
end
