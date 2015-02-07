class ChangeCommentsToResourceRequested < ActiveRecord::Migration
  def change
    rename_column :agenda_reservations, :comments, :resource_requested
  end
end
