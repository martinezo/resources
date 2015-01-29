class Agenda::Reservation < ActiveRecord::Base
  belongs_to :event_type, :class_name => 'Catalogs::EventType', :foreign_key => :event_type_id
  belongs_to :status, :class_name => 'Catalogs::Status', :foreign_key => :status_id
  belongs_to :f_headquarter, :class_name => 'Catalogs::Headquarter', :foreign_key => :foreign_headquarter_id

  before_create :initial_settings

  def self.search(search)
    if search
      where("(translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(email),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR  requester LIKE ?)", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  private
    def initial_settings
      self.folio = Time.now.to_i
      self.status_id = 1
    end


end
