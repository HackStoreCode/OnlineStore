class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.text :description
      t.float :total_amount
      t.references :ordergroup, foreign_key: true

      t.timestamps
    end
  end
end
