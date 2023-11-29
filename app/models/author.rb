class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :name, length: { minimum: 3, maximum: 60 }
  validate :cpf_is_valid?

  private

  def cpf_is_valid?
    errors.add(:cpf, "Formato de CPF errado! Por favor, cheque os números.") unless CPF.valid?(cpf)
  end
end
