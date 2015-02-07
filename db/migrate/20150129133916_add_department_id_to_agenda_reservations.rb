class AddDepartmentIdToAgendaReservations < ActiveRecord::Migration
  def change
    add_column :agenda_reservations, :department_id, :integer
  end
end
