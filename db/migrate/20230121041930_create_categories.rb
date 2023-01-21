class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.references :pattern, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
