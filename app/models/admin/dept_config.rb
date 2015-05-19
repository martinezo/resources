class Admin::DeptConfig < ActiveRecord::Base
  belongs_to :department, :class_name => 'Catalogs::Department'

  validates :department_id, :uniqueness => {scope: [:tag]}

  scope :by_department_id_and_tag, ->(department_id, tag) {where(department_id: department_id, tag: tag)}
end
