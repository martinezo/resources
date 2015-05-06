class AddDepartmenIdToCatalogsHeadquartes < ActiveRecord::Migration
  def change
    add_column :catalogs_headquarters, :department_id, :integer
  end
end
