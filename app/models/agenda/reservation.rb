class Agenda::Reservation < ActiveRecord::Base
  belongs_to :event_type, :class_name => 'Catalogs::EventType', :foreign_key => :event_type_id
  belongs_to :status, :class_name => 'Catalogs::Status', :foreign_key => :status_id
  belongs_to :f_headquarter, :class_name => 'Catalogs::Headquarter', :foreign_key => :foreign_headquarter_id
  belongs_to :l_headquarter, -> {joins(:institution).where('local = true')}, :class_name => 'Catalogs::Headquarter', :foreign_key => :local_headquarter_id
  belongs_to :admin_user, :class_name => 'Admin::User'
  has_many :messages, -> {order 'id desc'}, :class_name => 'Agenda::ReservMsg'

  validates :requester, :email, :resource_requested, :local_headquarter_id, presence: true
  validates :admin_user_id, presence: true, on: :update, if: :assign_action?

  before_create :initial_settings

  attr_accessor :action

  scope :my_department, -> (department_id) {where("agenda_reservations.department_id = ? ",  department_id)}

  def assign_action?
    action == 'assign'
  end


  def self.search(search)
    if search
     joins('LEFT JOIN admin_users ON admin_users.id = agenda_reservations.admin_user_id').where("( \
     translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR to_char(folio,'99999999999') LIKE ? \
     OR to_char(agenda_reservations.created_at, 'DD/MM/YYYY') LIKE ? \
     OR initials LIKE ?)", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  def self.public_search(search)
    if search
      where("(translate(lower(requester),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
      OR (translate(lower(resource_requested),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')) \
      OR to_char(agenda_reservations.created_at, 'DD/MM/YYYY') LIKE ? \
      )", "%#{search}%", "%#{search}%", "%#{search}%")
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
