class League < ActiveRecord::Base
  attr_accessible :name, :region

  has_many :divisions
end
