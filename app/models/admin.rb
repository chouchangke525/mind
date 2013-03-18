class Admin < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  
  has_secure_password
  
  validates :name, :presence => true, :uniqueness => true
  
   before_create do |admin|
     admin.name=admin.name.upcase
     end 
  
end
