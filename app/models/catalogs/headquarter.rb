class Catalogs::Headquarter < ActiveRecord::Base
  belongs_to :catalogs_institution, :class_name => 'Catalogs::Institution', :foreign_key => :institution_id


  def self.search(search)
    if search
      #where("login LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      where("(translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR translate(lower(responsible),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') \
     OR  email LIKE ?)", "%#{search}%", "%#{search}%", "%#{search}%")

    else
      all
    end
  end

end
