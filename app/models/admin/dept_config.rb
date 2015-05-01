class Admin::DeptConfig < ActiveRecord::Base
  belongs_to :department, :class_name => 'Catalogs::Department'

  validates :department_id, :uniqueness => {scope: [:tag]}
end
