json.array!(@catalogs_departments) do |catalogs_department|
  json.extract! catalogs_department, :id, :abbr, :name, :img_header, :institution_id
  json.url catalogs_department_url(catalogs_department, format: :json)
end
