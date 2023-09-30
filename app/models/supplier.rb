class Supplier < ApplicationRecord
  has_one :accont
  has_many :parts
end
