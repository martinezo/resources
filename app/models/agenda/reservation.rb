class Agenda::Reservation < ActiveRecord::Base
  belongs_to :catalogs_event_type, :class_name => 'Catalogs::EventType', :foreign_key => :event_type_id
  belongs_to :catalogs_status, :class_name => 'Catalogs::Status', :foreign_key => :status_id
  belongs_to :catalogs_headquarter, :class_name => 'Catalogs::Headquarter', :foreign_key => :foreign_headquarter_id

  def self.search(search)
    if search
      where("(translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(email),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR  requester LIKE ?)", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
