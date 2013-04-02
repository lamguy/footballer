class Stadium < ActiveRecord::Base
  belongs_to :league
  belongs_to :team
  attr_accessible :history, :location, :name, :league_id, :team_id
end
