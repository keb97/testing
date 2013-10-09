json.array!(@transactions) do |transaction|
  json.extract! transaction, :PickupAddress, :DropoffAddress, :PickupDate, :PickupTime, :DropoffDate, :DropoffTime
  json.url transaction_url(transaction, format: :json)
end
