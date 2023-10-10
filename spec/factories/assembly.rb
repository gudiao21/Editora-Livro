# spec/factories/assembly.rb
FactoryBot.define do
  factory :assembly do
    name { Faker::Commerce.name } # Adicionando o atributo 'name'
    # Outros atributos da montagem, se houver
  end
end
