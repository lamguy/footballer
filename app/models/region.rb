class Region < ActiveRecord::Base
  attr_accessible :name

  has_many :leagues
end
