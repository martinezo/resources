class Agenda::Reservation < ActiveRecord::Base
  belongs_to :event_type, :class_name => 'Catalogs::EventType', :foreign_key => :event_type_id
  belongs_to :status, :class_name => 'Catalogs::Status', :foreign_key => :status_id
  belongs_to :f_headquarter, :class_name => 'Catalogs::Headquarter', :foreign_key => :foreign_headquarter_id
  has_many :messages, -> {order 'id desc'}, :class_name => 'Agenda::ReservMsg'

  validates :requester, :email, :resource_requested, presence: true

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

  def self.public_search(search)
    if search
      where("(translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou'))", "%#{search}%")
    else
      all
    end
  end

  def short_resource_requested
    if resource_requested.length < 130
      resource_requested
    else
      "#{resource_requested[0..130]} ..."
    end
  end

 private
    def initial_settings
      self.folio = Time.now.to_i
      self.status_id = 1
    end


end
