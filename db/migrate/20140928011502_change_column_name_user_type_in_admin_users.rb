class ChangeColumnNameUserTypeInAdminUsers < ActiveRecord::Migration
  def change
    rename_column :admin_users, :user_type, :user_type_id
  end
end
