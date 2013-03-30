class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :summary, :tags, :title, :posttype, :thumbnail, :header_image, :bigimage
  has_many :comments

  def bigimage
  	@picture = RedactorRails.picture_model.where(:id => header_image).first
  	@picture.image
  end

end
