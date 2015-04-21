class Catalogs::Institution < ActiveRecord::Base

  has_many :headquarters, :class_name => 'Catalogs::Headquarter'

  def self.search(search)
    if search
      where("abbr LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
