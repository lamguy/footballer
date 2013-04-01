class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :bio, :born, :history, :name, :nationality, :photo, :retired
end
