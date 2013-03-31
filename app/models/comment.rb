class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :comment, :user, :post

  has_reputation :votes,
  				 :source => :user

end
