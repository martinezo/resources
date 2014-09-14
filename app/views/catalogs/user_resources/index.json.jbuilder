json.array!(@catalogs_user_resources) do |catalogs_user_resource|
  json.extract! catalogs_user_resource, :id, :admin_user_id, :resource_id, :administrator
  json.url catalogs_user_resource_url(catalogs_user_resource, format: :json)
end
