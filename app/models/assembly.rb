class Assembly < ApplicationRecord
  belongs_to :books
  has_and_belongs_to_many :parts
end
