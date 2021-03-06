json.extract! service_provider,
  :id,
  :municipality_id,
  :name,
  :about,
  :street,
  :city,
  :state,
  :zip,
  :contact_person,
  :phone,
  :email,
  :url,
  :services,
  :logo,
  # 🚅 super scaffolding will insert new fields above this line.
  :created_at,
  :updated_at
json.url account_service_provider_url(service_provider, format: :json)
