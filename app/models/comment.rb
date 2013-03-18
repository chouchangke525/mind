class Comment < ActiveRecord::Base
  attr_accessible :comment_word, :commenting_id, :commentted_id
  
  belongs_to :commenting, :class_name => "User"
  belongs_to :commentted, :class_name => "Content"
  
end
