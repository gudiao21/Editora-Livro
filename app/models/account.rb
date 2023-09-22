class Account < ApplicationRecord
  belongs_to :supplier

  def nome
    supplier.nome if supplier
  end
end
