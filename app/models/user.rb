class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :hobby, :name, :occupation, :password, :password_confirmation
  has_secure_password
  
  has_many :contents, :dependent => :destroy
  
  has_many :follows, :foreign_key => "followed_id", :dependent => :destroy
  
  has_many :reverse_follows, :class_name => "Follow", :foreign_key => "following_id", :dependent => :destroy
  
  has_many :comments, :foreign_key => "commenting_id", :dependent => :destroy
  
  has_many :followeds, :class_name =>"User", :through => :reverse_follows
  
  has_many :followings, :class_name =>"User", :through => :follows
  
  validates :name, :presence => true, :uniqueness => true
  
  before_create do |user|
     user.name=user.name.downcase
     end 
  
end
