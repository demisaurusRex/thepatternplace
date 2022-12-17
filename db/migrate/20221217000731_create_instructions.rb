class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.references :pattern, null: false, foreign_key: true
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end
