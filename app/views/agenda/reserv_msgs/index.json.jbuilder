json.array!(@agenda_reserv_msgs) do |agenda_reserv_msg|
  json.extract! agenda_reserv_msg, :id, :reservation_id, :message
  json.url agenda_reserv_msg_url(agenda_reserv_msg, format: :json)
end
