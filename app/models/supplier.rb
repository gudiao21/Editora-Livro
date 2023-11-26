class Supplier < ApplicationRecord
  has_one :account
  has_many :parts, dependent: :destroy
  validates :name, presence: true
  validate :cnpj_is_valid?

  before_validation :format_cnpj

  private

  def cnpj_is_valid?
    errors.add(:cnpj, "CNPJ inválido! Por favor, verifique os dados.") unless format_and_validate_cnpj
  end

  def format_cnpj
    return if cnpj.blank?

    begin
      self.cnpj = CpfCnpj.format(cnpj)
    rescue
      self.cnpj = nil
    end
  end

  def format_and_validate_cnpj
    return false if cnpj.blank?

    begin
      self.cnpj = CpfCnpj.format(cnpj)
      return true
    rescue
      return false
    end
  end
end
