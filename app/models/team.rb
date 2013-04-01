class Team < ActiveRecord::Base
  belongs_to :division
  attr_accessible :history, :logo, :name
end
