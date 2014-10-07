class Agenda::ReservResource < ActiveRecord::Base
  belongs_to :catalogs_resource, :class_name => 'Catalogs::Resource', :foreign_key => :resource_id
  belongs_to :agenda_reservation, :class_name => 'Agenda::Reservation', :foreign_key => :reservation_id

  def self.search(search)
    if search
      where("reservation_id LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(mail),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou'))", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
