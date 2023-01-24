class CustomisedInstruction < ApplicationRecord
  belongs_to :order
  has_many :customised_instruction_steps
  has_many :custom_categories, -> { order(position: :asc) }
  accepts_nested_attributes_for :custom_categories
end
