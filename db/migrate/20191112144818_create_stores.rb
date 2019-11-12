class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.string :telephone
      t.string :email
      t.string :website
      t.string :contact
      t.string :contact_phone
      t.string :contact_email
      t.string :owner_name
      t.string :owner_phone
      t.string :owner_email
      t.string :accounting_email
      t.boolean :free
      t.boolean :delivery
      t.boolean :visible
      t.boolean :active

      t.timestamps
    end
  end
end
