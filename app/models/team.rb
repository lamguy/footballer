class Team < ActiveRecord::Base
  belongs_to :division
  has_many :players, :through => :playing_team
  attr_accessible :history, :logo, :name, :division_id, :shortname
end
