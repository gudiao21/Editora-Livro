class Book < ApplicationRecord
  belongs_to :author
  has_many :assemblies
  validates :title, presence: true, length: {minimum: 3, maximum: 100}
  validate :isbn_is_valid?

  scope :search, ->(query) { where("title like ?", "%#{query}%") }
  scope :by_author_name, ->(query) { joins(:author).where("LOWER(authors.description) LIKE ?", "%#{query.downcase}%") }

  private

  def isbn_is_valid?
    errors.add(:isbn, "ISBN inválido! Por favor, reveja o número.") unless ISBN.valid?(isbn)
  end
end
