class AddCategoryToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_reference :instructions, :category, foreign_key: true
  end
end
