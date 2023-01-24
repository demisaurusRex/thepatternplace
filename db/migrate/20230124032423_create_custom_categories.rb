class CreateCustomCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_categories do |t|
      t.integer :position
      t.string :name
      t.references :customised_instruction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
