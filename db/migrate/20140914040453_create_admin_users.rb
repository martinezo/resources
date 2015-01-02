class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :login, default: ''
      t.string :name, default: ''
      t.string :mail, default: ''
      t.integer :department_id
      t.integer :user_type_id, default: 1

      t.timestamps
    end
  end
end
