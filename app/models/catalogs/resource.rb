class Catalogs::Resource < ActiveRecord::Base

  belongs_to :catalogs_resource_type, :class_name => 'Catalogs::ResourceType',  :foreign_key => :resource_type_id
  belongs_to :admin_user, :class_name => 'Admin::User', :foreign_key => :admin_user_id
  has_many :users, class_name: 'Catalogs::UserResource'
  has_many :admin_users, class_name: 'Admin::User', through: :users

  validates :abbr, :name, :resource_type_id, :admin_user_id ,presence: true

  def self.search(search)
    if search
      where("(translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(abbr),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(description),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou'))", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  def self.search_resource(search)
    if search
      where("(translate(lower(abbr),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(description),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR  location LIKE ?)", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end



  def is_admin_by?(user_id)
     admin_users.where(id: user_id).size > 0
  end

end
