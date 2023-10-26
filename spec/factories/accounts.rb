FactoryBot.define do
  factory :account do
    account_number { Faker::Bank.account_number }
    # associação ao fornecedor
    association :supplier, factory: :supplier
  end
end
