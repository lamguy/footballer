class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :summary, :tags, :title, :posttype, :thumbnail, :header_image
  has_many :comments
end
