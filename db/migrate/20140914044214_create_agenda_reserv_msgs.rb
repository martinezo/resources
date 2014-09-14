class CreateAgendaReservMsgs < ActiveRecord::Migration
  def change
    create_table :agenda_reserv_msgs do |t|
      t.integer :reservation_id
      t.string :message, default: ''

      t.timestamps
    end
  end
end
