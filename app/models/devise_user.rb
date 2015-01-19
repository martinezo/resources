class DeviseUser < ActiveRecord::Base
  belongs_to :department, :class_name => 'Catalogs::Department'
  self.table_name = 'admin_users'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable
  #, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
