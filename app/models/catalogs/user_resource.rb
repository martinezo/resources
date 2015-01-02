class Catalogs::UserResource < ActiveRecord::Base
  belongs_to :admin_user, :class_name => 'Admin::User', :foreign_key => :admin_user_id
  belongs_to :catalogs_resource, :class_name => 'Catalogs::Resource', :foreign_key => :resource_id


  def self.search(search)
    if search
      where("name LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(mail),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou'))", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
