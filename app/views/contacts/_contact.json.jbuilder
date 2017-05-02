json.extract! contact, :id, :name, :email, :company, :address, :phone, :birthday, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
