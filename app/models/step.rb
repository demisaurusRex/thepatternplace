class Step < ApplicationRecord
  belongs_to :pattern
  belongs_to :category
  has_one :purchased_instruction
  has_one_attached :image
end
