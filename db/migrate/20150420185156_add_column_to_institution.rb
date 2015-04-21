class AddColumnToInstitution < ActiveRecord::Migration
  def change
    add_column :catalogs_institutions, :local, :boolean, default: false
  end
end
