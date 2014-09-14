json.array!(@catalogs_statuses) do |catalogs_status|
  json.extract! catalogs_status, :id, :name
  json.url catalogs_status_url(catalogs_status, format: :json)
end
