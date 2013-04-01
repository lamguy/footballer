class Division < ActiveRecord::Base
  belongs_to :league
  attr_accessible :name, :league_id

  has_many :teams
end
