json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :make, :v_type, :year, :color
  json.url vehicle_url(vehicle, format: :json)
end
