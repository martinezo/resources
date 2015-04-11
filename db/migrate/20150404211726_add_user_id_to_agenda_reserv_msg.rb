class AddUserIdToAgendaReservMsg < ActiveRecord::Migration
  def change
    add_column :agenda_reserv_msgs, :user_id, :integer
  end
end
