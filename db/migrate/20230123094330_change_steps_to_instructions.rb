class ChangeStepsToInstructions < ActiveRecord::Migration[7.0]
  def change
    rename_table :steps, :instructions
  end
end
