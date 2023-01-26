class CustomisedInstruction < ApplicationRecord
  belongs_to :order
  has_many :customised_instruction_steps, dependent: :destroy
  has_many :custom_categories, -> { order(position: :asc) }, dependent: :destroy
  accepts_nested_attributes_for :custom_categories
end
