# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'factory_bot_rails'

#Cria 2 forncecedores usando a factory
suppliers = FactoryBot.create_list(:supplier, 2)

#Para cada fornecedor, cria uma conta associada
suppliers.each do |supplier|
  FactoryBot.create(:account, supplier: supplier)
end

#Cria 2 montagens usando a factory
FactoryBot.create_list(:assembly, 2)
