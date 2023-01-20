class CustomisedInstruction < ApplicationRecord
  belongs_to :order
  has_many :customised_instruction_steps
end
