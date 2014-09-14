json.array!(@catalogs_event_types) do |catalogs_event_type|
  json.extract! catalogs_event_type, :id, :name
  json.url catalogs_event_type_url(catalogs_event_type, format: :json)
end
