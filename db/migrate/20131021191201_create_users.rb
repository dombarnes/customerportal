class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_salt
      t.string :pasword_hash
      t.boolean :reseller
      t.integer :reseller_id
      t.boolean :admin
      t.boolean :staff

      t.timestamps
    end
  end
end
