json.extract! contact, :id, :first_name, :last_name, :office_phone, :home_phone, :office_address, :home_address, :created_at, :updated_at
json.url contact_url(contact, format: :json)
