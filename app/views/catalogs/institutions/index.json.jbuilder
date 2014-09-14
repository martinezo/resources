json.array!(@catalogs_institutions) do |catalogs_institution|
  json.extract! catalogs_institution, :id, :abbr, :name
  json.url catalogs_institution_url(catalogs_institution, format: :json)
end
