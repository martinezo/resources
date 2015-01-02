class Catalogs::Department < ActiveRecord::Base
  belongs_to :catalogs_institution, :class_name => 'Catalogs::Institution', :foreign_key => :institution_id

  def self.search(search)
    if search
      where("abbr LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%")
    else
      all
    end
  end


end
