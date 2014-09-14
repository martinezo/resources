json.array!(@agenda_reserv_dates) do |agenda_reserv_date|
  json.extract! agenda_reserv_date, :id, :reservation_id, :start_date_hour, :end_date_hour
  json.url agenda_reserv_date_url(agenda_reserv_date, format: :json)
end
