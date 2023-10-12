FactoryBot.define do
  factory :part do
    part_number { Faker::Alphanumeric.alpha }

    #Associando a um fornecedor (supplier) e a uma montagem (assembly)
    association :supplier
    association :assembly
  end
end