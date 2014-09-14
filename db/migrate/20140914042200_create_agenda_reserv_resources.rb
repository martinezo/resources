class CreateAgendaReservResources < ActiveRecord::Migration
  def change
    create_table :agenda_reserv_resources do |t|
      t.integer :reservation_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
