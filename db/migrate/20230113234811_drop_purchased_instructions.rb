class DropPurchasedInstructions < ActiveRecord::Migration[7.0]
  def change
    drop_table :purchased_instructions
  end
end
