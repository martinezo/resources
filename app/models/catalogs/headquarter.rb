class Catalogs::Headquarter < ActiveRecord::Base
  belongs_to :institution, :class_name => 'Catalogs::Institution'
  belongs_to :department, :class_name => 'Catalogs::Department'

  validates :name, :institution_id, :department_id, :responsible, presence: true

  scope :no_local_for_department, ->(department_id) {joins(:institution).where('local = ? AND catalogs_headquarters.department_id = ?', false, department_id)}

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

  def inst_abbr_name
    "#{institution.abbr} -  #{name}"
  end
end
