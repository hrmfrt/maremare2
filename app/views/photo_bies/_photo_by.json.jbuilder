json.extract! photo_by, :id, :name, :created_at, :updated_at
json.url photo_by_url(photo_by, format: :json)
