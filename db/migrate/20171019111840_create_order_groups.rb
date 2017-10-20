class CreateOrderGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :order_groups do |t|
      t.datetime :order_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
