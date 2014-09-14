class CreateCatalogsResources < ActiveRecord::Migration
  def change
    create_table :catalogs_resources do |t|
      t.string :abbr, default: ''
      t.string :name, default: ''
      t.integer :resource_type_id
      t.string :description, default: ''
      t.string :location, default: ''
      t.boolean :active, default: true
      t.integer :admin_user_id
      t.boolean :unique, default: false

      t.timestamps
    end
  end
end
