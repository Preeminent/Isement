json.array!(@orders) do |order|
  json.extract! order, :id, :title, :address, :city, :state, :description, :rate
  json.url order_url(order, format: :json)
end
