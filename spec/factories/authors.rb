FactoryBot.define do
  factory :author do
    name { Faker::Name.name }
    cpf { "12345678901" } #Valor preenchido manualmente, mas será substituído no seeds.rb
  end
end
