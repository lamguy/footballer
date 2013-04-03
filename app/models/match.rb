class Match < ActiveRecord::Base
  belongs_to :stadium

  belongs_to :team_home, 
  			 :foreign_key => 'team_home_id', 
  			 :class_name => 'Team'

  belongs_to :team_away, 
  			 :foreign_key => 'team_away_id', 
  			 :class_name => 'Team'

  has_many :commentaries
  has_many :comments

  attr_accessible :statistics, :team_away_goal, :home_score, :away_score, 
  				  :team_away_id, :team_home_goal, :team_home_id, :stadium_id

  def match_started?
  	DateTime.now + 600 < DateTime.now
  end

  def home_score
  	'-'
  	#team_home_goal=='' ? '-' : team_away_goal.to_s
  end

  def away_score
  	'-'
  	#team_away_goal=='' ? '-' : team_away_goal.to_s
  end

end
