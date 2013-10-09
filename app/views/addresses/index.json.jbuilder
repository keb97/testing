json.array!(@addresses) do |address|
  json.extract! address, :street, :city, :state, :zip, :country
  json.url address_url(address, format: :json)
end
