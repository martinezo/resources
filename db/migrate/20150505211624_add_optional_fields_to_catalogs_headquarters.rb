class AddOptionalFieldsToCatalogsHeadquarters < ActiveRecord::Migration
  def change
    add_column :catalogs_headquarters, :txt_op_1, :string
    add_column :catalogs_headquarters, :txt_op_2, :string
  end
end
