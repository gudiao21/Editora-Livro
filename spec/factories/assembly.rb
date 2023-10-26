FactoryBot.define do
  factory :assembly do
    name { Faker::Commerce.name } # Adicionando o atributo 'name'
    # Outros atributos da montagem, se houver
    book
  end
end
