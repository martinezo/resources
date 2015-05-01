class Admin::User < ActiveRecord::Base

  belongs_to :department, :class_name => 'Catalogs::Department'
  has_many :resources, :class_name => 'Catalogs::UserResource', foreign_key: :admin_user_id

  has_many :catalogs_resources, class_name: 'Catalogs::Resource', through: :resources

  validates :name, :initials, :login, :mail, :department_id, :user_type_id, presence: true

  scope :from_department, ->(department_id) {where(department_id: department_id)}

  def self.search(search)
    if search
      where("login LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end


  def self.search_user(search)
    if search
      where("login LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou') OR mail LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  def admin_resource?(resource_id)
    catalogs_resources.where(id: resource_id).size > 0
  end

end
