class ReportsController < ApplicationController
  def authors_report
    @authors = Author.includes(:books)
  end

  def suppliers_report
    @books = Book.includes(assemblies: [:parts])
  end

  def books_report
    # Lógica para o relatório de livros aqui
  end
end
