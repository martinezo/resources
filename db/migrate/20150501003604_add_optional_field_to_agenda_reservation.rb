class AddOptionalFieldToAgendaReservation < ActiveRecord::Migration
  def change
    add_column :agenda_reservations, :txt_op_1, :string
    add_column :agenda_reservations, :txt_op_2, :string
    add_column :agenda_reservations, :txt_op_3, :string
    add_column :agenda_reservations, :txt_op_4, :string
  end
end
