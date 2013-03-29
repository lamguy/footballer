class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :summary, :tags, :title, :type

  has_many :comments
end
