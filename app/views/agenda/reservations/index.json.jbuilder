json.array!(@agenda_reservations) do |agenda_reservation|
  json.extract! agenda_reservation, :id, :folio, :requester, :email, :phone, :foreing_headquarter_id, :event_type_id, :status_id, :comments, :modified_by
  json.url agenda_reservation_url(agenda_reservation, format: :json)
end
