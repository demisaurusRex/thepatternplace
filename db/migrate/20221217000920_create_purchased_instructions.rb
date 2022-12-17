class CreatePurchasedInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :purchased_instructions do |t|
      t.references :orders, null: false, foreign_key: true
      t.references :instructions, null: false, foreign_key: true
      t.integer :position
      t.text :comment

      t.timestamps
    end
  end
end
