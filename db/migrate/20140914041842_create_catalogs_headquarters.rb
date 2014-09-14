class CreateCatalogsHeadquarters < ActiveRecord::Migration
  def change
    create_table :catalogs_headquarters do |t|
      t.string :name, default: ''
      t.integer :institution_id
      t.string :responsible, default: ''
      t.string :email, default: ''
      t.string :phone, default: ''
      t.string :comments, default: ''

      t.timestamps
    end
  end
end
