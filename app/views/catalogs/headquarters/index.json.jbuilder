json.array!(@catalogs_headquarters) do |catalogs_headquarter|
  json.extract! catalogs_headquarter, :id, :name, :intitution_id, :responsible, :email, :phone, :comments
  json.url catalogs_headquarter_url(catalogs_headquarter, format: :json)
end
