# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'factory_bot_rails'
require 'faker'

# Crie um usuário de exemplo:
User.create!(
  email: Faker::Internet.email,
  password: 'password123',
  password_confirmation: 'password123'
)

# Crie 2 fornecedores
suppliers = FactoryBot.create_list(:supplier, 2)

# Crie contas associadas a cada fornecedor
suppliers.each do |supplier|
  FactoryBot.create(:account, supplier: supplier)
end

# Crie 2 montagens
FactoryBot.create_list(:assembly, 2)
