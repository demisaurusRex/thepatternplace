class CreateCustomisedInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :customised_instructions do |t|
      t.references :orders, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
