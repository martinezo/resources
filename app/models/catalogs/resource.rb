class Catalogs::Resource < ActiveRecord::Base

  belongs_to :catalogs_resource_type, :class_name => 'Catalogs::ResourceType',  :foreign_key => :resource_type_id
  belongs_to :admin_user, :class_name => 'Admin::User', :foreign_key => :admin_user_id

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

end
