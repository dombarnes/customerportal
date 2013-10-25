class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :subdomain
      t.text :address
      t.string :contact
      t.string :contact_tel
      t.string :admin_contact
      t.string :admin_contact_tel
      t.string :subscription_type
      t.date :subscription_start_date
      t.string :subscription_end_date
      t.integer :reseller_id
      t.string :reseller_contact

      t.timestamps
    end
  end
end
