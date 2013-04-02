class Player < ActiveRecord::Base
  has_many :teams, :through => :playing_team

  attr_accessible :bio, :born, :history, :name, :nationality, :photo, :retired
end
