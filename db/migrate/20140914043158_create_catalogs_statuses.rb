class CreateCatalogsStatuses < ActiveRecord::Migration
  def change
    create_table :catalogs_statuses do |t|
      t.string :name, default: ''

      t.timestamps
    end
  end
end
