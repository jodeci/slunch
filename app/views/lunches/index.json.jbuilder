json.array!(@lunches) do |lunch|
  json.extract! lunch, :name, :location, :phone, :description
  json.url lunch_url(lunch, format: :json)
end
