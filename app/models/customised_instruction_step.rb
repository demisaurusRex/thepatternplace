class CustomisedInstructionStep < ApplicationRecord
  belongs_to :instruction
  belongs_to :customised_instruction
  belongs_to :custom_category
  acts_as_list scope: :custom_category
end
