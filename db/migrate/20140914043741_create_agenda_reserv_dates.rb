class CreateAgendaReservDates < ActiveRecord::Migration
  def change
    create_table :agenda_reserv_dates do |t|
      t.integer :reservation_id
      t.date :start_date_hour
      t.date :end_date_hour

      t.timestamps
    end
  end
end
