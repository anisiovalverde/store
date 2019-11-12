json.extract! store, :id, :name, :address, :state, :city, :telephone, :email, :website, :contact, :contact_phone, :contact_email, :owner_name, :owner_phone, :owner_email, :accounting_email, :free, :delivery, :visible, :active, :created_at, :updated_at
json.url store_url(store, format: :json)
