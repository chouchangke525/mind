class Content < ActiveRecord::Base
  attr_accessible :category_id, :mind, :title, :user_id
  
  belongs_to :category
  
  belongs_to :user
  
  has_many :comments, :foreign_key => "commentted_id", :dependent => :destroy
  
  validates :category_id, :presence => true
  validates :title, :presence => true
end
