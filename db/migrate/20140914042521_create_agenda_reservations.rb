class CreateAgendaReservations < ActiveRecord::Migration
  def change
    create_table :agenda_reservations do |t|
      t.integer :folio
      t.string :requester, default: ''
      t.string :email, default: ''
      t.string :phone, default: ''
      t.integer :foreign_headquarter_id
      t.integer :event_type_id
      t.integer :status_id, default: 0
      t.string :comments, default: ''
      t.integer :modified_by

      t.timestamps
    end
  end
end
