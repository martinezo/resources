class Catalogs::Department < ActiveRecord::Base
  belongs_to :catalogs_institution, :class_name => 'Catalogs::Institution', :foreign_key => :institution_id
  has_many :dept_configs, :class_name => 'Admin::DeptConfig'

  def self.search(search)
    if search
     where("abbr LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%", "%#{search}%")
    else
      all
    end
  end


end
