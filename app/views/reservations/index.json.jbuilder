json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :reservation_time
  json.url reservation_url(reservation, format: :json)
end
