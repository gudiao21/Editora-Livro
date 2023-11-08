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

# Crie 5 autores
#author = FactoryBot.create(:author)
5.times do
  FactoryBot.create(:author, name: Faker::Book.author, cpf: Faker::Number.number(digits: 11))
end

# Crie 5 books com nomes aleatórios e ISBNs aleatórios
5.times do
  Book.create(title: Faker::Book.title, author: Author.first, isbn: Faker::Code.isbn)
end

# seeds.rb

# Crie 5 registros para Parts
5.times do
  Part.create!(
    name: Faker::Lorem.word,  # Use a gem como Faker para gerar nomes fictícios
  # Outros atributos do modelo Part
    )
end

# Crie 5 registros para Assembly e associe cada um deles a partes aleatórias
5.times do
  assembly = Assembly.create!(
    name: Faker::Lorem.sentence,  # Use a gem como Faker para gerar nomes fictícios
    book_id: Book.pluck(:id).sample  # Suponha que você tenha registros na tabela de Books
  # Outros atributos do modelo Assembly
  )

  # Associe partes aleatórias ao assembly
  assembly.parts << Part.all.sample(rand(1..5))
end
