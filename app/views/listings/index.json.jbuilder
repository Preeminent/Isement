json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :price, :city, :state
  json.url listing_url(listing, format: :json)
end
