class AddAdminUserIdToAgendaReservations < ActiveRecord::Migration
  def change
    add_column :agenda_reservations, :admin_user_id, :integer
  end
end
