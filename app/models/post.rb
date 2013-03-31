class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :summary, :tags, :title, :posttype, :thumbnail, :header_image, :bigimage
  has_many :comments

  has_reputation :avg_rating,
  				 :source => :user,
  				 :aggregated_by => :sum,
  				 :source_of => [
  				 	{ :reputation => :posting_skill, :of => :user }
  				 ]

  def bigimage
  	@picture = RedactorRails.picture_model.where(:id => header_image).first
  	@picture.image
  end

end
