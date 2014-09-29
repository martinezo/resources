class Agenda::Reservation < ActiveRecord::Base
  #belongs_to :event_type, :class_name => 'Catalogs::EventType', :foreign_key => :event_type_id

  def self.search(search)
    if search
      where("requester LIKE ? OR translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(email),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou'))", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
