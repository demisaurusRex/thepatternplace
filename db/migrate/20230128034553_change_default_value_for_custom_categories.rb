class ChangeDefaultValueForCustomCategories < ActiveRecord::Migration[7.0]
  def change
    change_column_default :custom_categories, :showing, false
  end
end
