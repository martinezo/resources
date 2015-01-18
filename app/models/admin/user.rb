class Admin::User < ActiveRecord::Base

  belongs_to :department, :class_name => 'Catalogs::Department'

  validates :name, :login, :mail, :department_id, :user_type_id, presence: true

  def self.search(search)
    if search
      where("login LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
