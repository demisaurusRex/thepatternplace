class RenameInstructionsToSteps < ActiveRecord::Migration[7.0]
  def change
    rename_table :instructions, :steps
  end
end
