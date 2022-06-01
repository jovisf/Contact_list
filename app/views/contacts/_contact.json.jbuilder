json.extract! contact, :id, :name, :age, :phone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
