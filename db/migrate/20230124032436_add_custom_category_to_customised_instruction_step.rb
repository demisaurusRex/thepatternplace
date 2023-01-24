class AddCustomCategoryToCustomisedInstructionStep < ActiveRecord::Migration[7.0]
  def change
    add_reference :customised_instruction_steps, :custom_category, null: false, foreign_key: true
  end
end
