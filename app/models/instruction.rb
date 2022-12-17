class Instruction < ApplicationRecord
  belongs_to :pattern
  has_one :purchased_instruction
end
