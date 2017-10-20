class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.references :product, foreign_key: true
      t.references :ordergroup, foreign_key: true

      t.timestamps
    end
  end
end
