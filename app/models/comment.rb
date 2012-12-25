class Comment < ActiveRecord::Base
  attr_accessible :content, :post_id
  belongs_to :post
  validates_presence_of :content, :post_id
end
