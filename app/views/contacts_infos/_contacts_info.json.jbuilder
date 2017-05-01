json.extract! contacts_info, :id, :name, :, :phone, :address, :compay, :birthday, :created_at, :updated_at
json.url contacts_info_url(contacts_info, format: :json)
