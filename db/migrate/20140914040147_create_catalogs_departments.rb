class CreateCatalogsDepartments < ActiveRecord::Migration
  def change
    create_table :catalogs_departments do |t|
      t.string :abbr, default: ''
      t.string :name, default: ''
      t.string :img_header, default:''
      t.integer :institution_id

      t.timestamps
    end
  end
end
