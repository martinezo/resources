class Catalogs::Department < ActiveRecord::Base

  def self.search(search)
    if search
      where("abbr LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%")
    else
      all
    end
  end


end
