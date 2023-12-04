# Crie um usuário de exemplo:
begin
  user = User.create!(email: 'marcodotcastro@gmail.com', password: 'abc12345abc', password_confirmation: 'abc12345abc')
  puts "Usuário criado com sucesso!"
rescue ActiveRecord::RecordInvalid => e
  puts "Erro ao criar o usuário: #{e.message}"
  puts e.record.errors.full_messages
end

# authors
Author.create(name: "Aditya Y. Bhargava", cpf: "37380389734")
Author.create(name: "Andrew Hunt", cpf: "06018009749")
Author.create(name: "Erich Gamma", cpf: "37380389734")
Author.create(name: "Martin Fowler", cpf: "40883299704")
Author.create(name: "Steve McConnell", cpf: "46740252491")

# books
Book.create(title: "Entendendo algoritmos", published_at: Date.parse("2008-08-11"), author_id: 1, isbn: "9788575225639")
Book.create(title: "The Pragmatic Programmer: Your Journey to Mastery", published_at: Date.parse("2019-11-20"), author_id: 2, isbn: "9780201616224")
Book.create(title: "Design Patterns: Elements of Reusable Object-Oriented Software", published_at: Date.parse("1994-10-31"), author_id: 3, isbn: "9780201633610")
Book.create(title: "Refactoring: Improving the Design of Existing Code", published_at: Date.parse("1999-07-08"), author_id: 4, isbn: "9780201485677")
Book.create(title: "Code Complete: A Practical Handbook of Software Construction", published_at: Date.parse("2004-06-09"), author_id: 5, isbn: "9780735619678")

# suppliers
Supplier.create(name: "Papel e Cia Produtos de Papelarias LTDA", cnpj: "19518277000139")
Supplier.create(name: "Livraria Ler Papelaria LTDA", cnpj: "08596371000190")
Supplier.create(name: "Leonora", cnpj: "03064692000553 ")
Supplier.create(name: "Papelaria Agora", cnpj: "15427207000114")

Account.create(account_number: "261533", supplier_id: 1, digit: "9")
Account.create(account_number: "111111", supplier_id: 2, digit: "6")
Account.create(account_number: "123456", supplier_id: 3, digit: "7")
Account.create(account_number: "987654", supplier_id: 4, digit: "2")

# parts
# assemblies
assembly1 = Assembly.create!(name: "Livro de algoritmos", book_id: 1)
part1 = Part.create!(part_number: "P001", name: "capa dura", supplier_id: 1)
AssemblyPart.create!(assembly: assembly1, part: part1)

assembly2 = Assembly.create!(name: "Livro de programador", book_id: 2)
part2 = Part.create!(part_number: "P002", name: "Papel", supplier_id: 2)
AssemblyPart.create!(assembly: assembly2, part: part2)

assembly3 = Assembly.create!(name: "Livro de padrões de design", book_id: 3)
part3 = Part.create!(part_number: "P003", name: "espiral", supplier_id: 3)
AssemblyPart.create!(assembly: assembly3, part: part3)

assembly4 = Assembly.create!(name: "Livro de refatoração", book_id: 4)
part4 = Part.create!(part_number: "P004", name: "tinta", supplier_id: 4)
AssemblyPart.create!(assembly: assembly4, part: part4)
