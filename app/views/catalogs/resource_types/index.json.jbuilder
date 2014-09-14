json.array!(@catalogs_resource_types) do |catalogs_resource_type|
  json.extract! catalogs_resource_type, :id, :name, :description
  json.url catalogs_resource_type_url(catalogs_resource_type, format: :json)
end
