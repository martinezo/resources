class CreateCatalogsInstitutions < ActiveRecord::Migration
  def change
    create_table :catalogs_institutions do |t|
      t.string :abbr, default: ''
      t.string :name, default: ''

      t.timestamps
    end
  end
end
