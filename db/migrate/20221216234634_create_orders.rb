class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pattern, null: false, foreign_key: true
      t.decimal :price_paid

      t.timestamps
    end
  end
end
