class CreateCatalogsResourceTypes < ActiveRecord::Migration
  def change
    create_table :catalogs_resource_types do |t|
      t.string :name, default:''
      t.string :description, default:''

      t.timestamps
    end
  end
end
