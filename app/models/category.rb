class Category < ApplicationRecord
  belongs_to :pattern
  has_many :instructions
end
