class Account < ApplicationRecord
  belongs_to :supplier
  validates :account_number, presence: true, uniqueness: true

  before_validation :calculate_and_set_digit, on: :create

  scope :search, ->(query) { where("account_number like ?", "%#{query}%") }

  private

  def calculate_and_set_digit
    d = CheckAccountDigit.new(account_number)
    self.digit = d.check_digit
  end
end
