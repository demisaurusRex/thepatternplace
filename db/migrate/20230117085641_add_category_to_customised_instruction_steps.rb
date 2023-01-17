class AddCategoryToCustomisedInstructionSteps < ActiveRecord::Migration[7.0]
  def change
    add_column :customised_instruction_steps, :category, :string, default: 'Uncategorised'
  end
end
