class FixCustomisedInstructionColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :customised_instructions, :orders_id, :order_id
  end
end
