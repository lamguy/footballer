class Match < ActiveRecord::Base
  belongs_to :stadium
  belongs_to :team_home, :foreign_key => 'team_home_id', :class_name => 'Team'
  belongs_to :team_away, :foreign_key => 'team_away_id', :class_name => 'Team'
  has_many :commentaries
  attr_accessible :statistics, :team_away_goal, :team_away_id, :team_home_goal, :team_home_id, :stadium_id
end
