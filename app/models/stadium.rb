class Stadium < ActiveRecord::Base
  belongs_to :league
  attr_accessible :history, :location, :name, :league_id
end
