class CreateCatalogsEventTypes < ActiveRecord::Migration
  def change
    create_table :catalogs_event_types do |t|
      t.string :name, default: ''

      t.timestamps
    end
  end
end
