class Assembly < ApplicationRecord
  belongs_to :book
  has_and_belongs_to_many :parts, join_table: "assembly_parts"

  scope :search_by_name, ->(query) { where("name ILIKE ?", "%#{query}%") }
end
