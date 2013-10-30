json.array!(@transactions) do |transaction|
  json.extract! transaction, :pickup_address, :dropoff_address, :pickup_date, :pickup_time, :dropoff_date, :dropoff_time
  json.url transaction_url(transaction, format: :json)
end
