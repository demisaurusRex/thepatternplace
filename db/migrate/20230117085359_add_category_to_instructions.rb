class AddCategoryToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_column :instructions, :category, :string
  end
end
