class AddDefaultCategoryToInstructions < ActiveRecord::Migration[7.0]
  def change
    change_column_default :instructions, :category, 'Uncategorised'
  end
end
