json.array!(@agenda_reserv_resources) do |agenda_reserv_resource|
  json.extract! agenda_reserv_resource, :id, :reservation_id, :resource_id
  json.url agenda_reserv_resource_url(agenda_reserv_resource, format: :json)
end
