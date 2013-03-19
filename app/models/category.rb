class Category < ActiveRecord::Base
  attr_accessible :word
  has_many :contents, :dependent => :destroy
  
  validates :word, :presence => true, :uniqueness => true
  before_create do |category|
     category.word=category.word.capitalize
     end 

  
    
  
 
  
end
