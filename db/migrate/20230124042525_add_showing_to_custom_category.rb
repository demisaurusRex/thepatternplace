class AddShowingToCustomCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_categories, :showing, :boolean, default:true
  end
end
