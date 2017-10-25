class CreateNewUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :new_users do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
