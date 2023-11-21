class Account < ApplicationRecord
  belongs_to :supplier
  validates :account_number, presence: true, uniqueness: true
  validate :account_digit_is_valid?

  scope :search, ->(query) { where("account_number like ?", "%#{query}%") }
  private

  def account_digit_is_valid?
    d = CheckAccountDigit.new(account_number)
    errors.add(:digit, "Dígito não válido! Por gente lesa, verifique o número da conta!") unless d.check_digit?
  end
end
