class ChangeColumnNameTypeInAdminUserd < ActiveRecord::Migration
  def change
    rename_column :admin_users, :type, :user_type
  end
end
