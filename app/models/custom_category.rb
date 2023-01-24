class CustomCategory < ApplicationRecord
  belongs_to :customised_instruction
  has_many :customised_instruction_steps, -> { order(position: :asc) }
  acts_as_list scope: :customised_instruction
end
