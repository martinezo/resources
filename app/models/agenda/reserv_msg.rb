class Agenda::ReservMsg < ActiveRecord::Base
  validates :message, presence: true
  validate :match_folio

  belongs_to :reservation, :class_name => 'Agenda::Reservation'
  belongs_to :user, :class_name => 'Admin::User'

  attr_accessor :folio

  def match_folio
    if Agenda::Reservation.find(reservation_id).folio != folio.to_i
      errors.add(:folio)
    end
  end

  def msg_user
    if user_id == 0 then
      reservation.requester
    else
      user.name
    end
  end

  def msg_header
    "#{msg_user}, [#{created_at.strftime('%d/%m/%Y %H:%M')}]:"
  end
end
