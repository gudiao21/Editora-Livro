FactoryBot.define do
  factory :supplier do
    name { Faker::Company.name } # Substitua por um atributo real, se necessário
    # Outros atributos do fornecedor, se houver
  end
end
