class Comment < ActiveRecord::Base
	include PublicActivity::Common

  belongs_to :user
  belongs_to :post
  belongs_to :match
  attr_accessible :comment, :user, :post

  has_reputation :votes,
  				 :source => :user

end
