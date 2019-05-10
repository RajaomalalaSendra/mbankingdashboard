json.extract! contact, :id, :nom_contact, :ville, :created_at, :updated_at
json.url contact_url(contact, format: :json)
