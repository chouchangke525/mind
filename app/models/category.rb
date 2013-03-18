class Category < ActiveRecord::Base
  attr_accessible :word
  has_many :contents
  
  
  before_create do |category|
     category.word=category.word.capitalize
     end 
  
end
