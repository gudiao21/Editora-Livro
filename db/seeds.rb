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
user = User.create!(email: 'marcodotcastro@gmail.com', password: 'abc12345abc', password_confirmation: 'abc12345abc')

# Crie 2 fornecedores
suppliers = FactoryBot.create_list(:supplier, 2)

# Crie contas associadas a cada fornecedor
suppliers.each do |supplier|
  FactoryBot.create(:account, supplier: supplier)
end

# Crie um autor
author = FactoryBot.create(:author)

# Crie um livro
book = FactoryBot.create(:book, author:author, name: Faker::Book.title)

# Crie 2 montagens associadas ao livro criado
Book.create(name: "Entendendo algoritmos", published_at: "2017-04-30T00:00:00Z", author_id: 1)
Book.create(name: "A linguagem de Programação GO", published_at: "2017-09-08T00:00:00Z", author_id: 1)
