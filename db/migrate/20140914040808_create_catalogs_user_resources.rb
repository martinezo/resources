class CreateCatalogsUserResources < ActiveRecord::Migration
  def change
    create_table :catalogs_user_resources do |t|
      t.integer :admin_user_id
      t.integer :resource_id
      t.boolean :administrator, default: false

      t.timestamps
    end
  end
end
