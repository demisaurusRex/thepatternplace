class CreateCustomisedInstructionSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :customised_instruction_steps do |t|
      t.references :instructions, null: false, foreign_key: true
      t.references :customised_instruction, null: false, foreign_key: true
      t.integer :position
      t.text :comment

      t.timestamps
    end
  end
end
