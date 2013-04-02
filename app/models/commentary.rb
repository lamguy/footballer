class Commentary < ActiveRecord::Base
  belongs_to :match
  belongs_to :user
  attr_accessible :commentary_text, :match_id, :user_id
end