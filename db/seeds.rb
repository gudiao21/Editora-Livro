# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Crie um usuário de exemplo:
begin
  user = User.create!(email: 'marcodotcastro@gmail.com', password: 'abc12345abc', password_confirmation: 'abc12345abc')
  puts "Usuário criado com sucesso!"
rescue ActiveRecord::RecordInvalid => e
  puts "Erro ao criar o usuário: #{e.message}"
  puts e.record.errors.full_messages
end

# authors
Author.create(name: "John Doe", cpf: "12345678901")
Author.create(name: "Jane Smith", cpf: "23456789012")
Author.create(name: "Alan Johnson", cpf: "34567890123")

# books
Book.create(title: "Clean Code: A Handbook of Agile Software Craftsmanship", published_at: "2008-08-11", author_id: 1, isbn: "9780132350884")
Book.create(title: "The Pragmatic Programmer: Your Journey to Mastery", published_at: "2019-11-20", author_id: 2, isbn: "9780135957059")
Book.create(title: "Design Patterns: Elements of Reusable Object-Oriented Software", published_at: "1994-10-31", author_id: 3, isbn: "9780201633610")
Book.create(title: "Refactoring: Improving the Design of Existing Code", published_at: "1999-07-08", author_id: 1, isbn: "9780201485677")
Book.create(title: "Code Complete: A Practical Handbook of Software Construction", published_at: "2004-06-09", author_id: 2, isbn: "9780735619678")

# suppliers
Supplier.create(name: "Papel e Cia Produtos de Papelarias LTDA", cnpj: "19518277000139")
Supplier.create(name: "Livraria Ler Paqpelaria LTDA", cnpj: "08596371000190")

# accounts
Account.create(account_number: "261533", supplier_id: 1, digit: "9")
Account.create(account_number: "111111", supplier_id: 2, digit: "6")
#Account.create(account_number: "111112", supplier_id: 3, digit: "8")
#Account.create(account_number: "122223", supplier_id: 4, digit: "3")
#Account.create(account_number: "123223", supplier_id: 5, digit: "8")

