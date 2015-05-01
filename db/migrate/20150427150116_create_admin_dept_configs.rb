class CreateAdminDeptConfigs < ActiveRecord::Migration
  def change
    create_table :admin_dept_configs do |t|
      t.integer :department_id
      t.string :tag
      t.string :label
      t.string :value
      t.string :options
      t.integer :precedence

      t.timestamps null: false
    end
  end
end
