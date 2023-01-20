class RenameColumnOnCustomisedInstructions < ActiveRecord::Migration[7.0]
  def change
    rename_column :customised_instruction_steps, :instructions_id, :instruction_id
  end
end
