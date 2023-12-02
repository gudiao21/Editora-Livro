class Supplier < ApplicationRecord
  has_one :account
  has_many :parts
  validates :name, presence: true, length: { minimum: 3, maximum: 60 }
  validate :cnpj_is_valid?

  before_validation :format_cnpj

  scope :by_supplier_name, ->(query) { where('name ILIKE ?', "%#{query}%") if query.present? }
  scope :by_account_number, ->(query) { joins(:account).where('accounts.account_number ILIKE ?', "%#{query}%") if query.present? }

  private

  def cnpj_is_valid?
    unless cnpj.blank? || CNPJ.valid?(cnpj)
      errors.add(:cnpj, "CNPJ inválido! Por favor, verifique os dados.")
    end
  end

  def format_cnpj
    return if cnpj.blank?

    begin
      self.cnpj = CNPJ.new(cnpj).formatted
    rescue
      errors.add(:cnpj, "Erro ao formatar o CNPJ. Por favor, verifique os dados.")
    end
  end
end
