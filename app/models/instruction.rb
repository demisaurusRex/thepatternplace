class Instruction < ApplicationRecord
  belongs_to :pattern
  has_one :purchased_instruction
  has_one_attached :image
end
