class CreatePatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :patterns do |t|
      t.string :title
      t.text :description
      t.string :difficulty
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
