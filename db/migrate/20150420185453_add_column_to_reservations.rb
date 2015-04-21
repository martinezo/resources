class AddColumnToReservations < ActiveRecord::Migration
  def change
    add_column :agenda_reservations, :local_headquarter_id, :integer
  end
end
