json.array!(@catalogs_resources) do |catalogs_resource|
  json.extract! catalogs_resource, :id, :abbr, :name, :resource_type_id, :description, :ubication, :active, :admin_user_id, :unique
  json.url catalogs_resource_url(catalogs_resource, format: :json)
end
