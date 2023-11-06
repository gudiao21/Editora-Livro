class Book < ApplicationRecord
  belongs_to :author
  has_many :assemblies

  validates :title, presence: true
  validates :isbn, presence: true, uniqueness: true
end
