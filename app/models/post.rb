class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :summary, :tags, :title, :posttype

  has_many :comments
end
