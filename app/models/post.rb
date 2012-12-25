class Post < ActiveRecord::Base
  attr_accessible :content
  has_many :comments
  validates_presence_of :content
end
