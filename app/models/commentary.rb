class Commentary < ActiveRecord::Base
  belongs_to :match
  belongs_to :user
  attr_accessible :commentary_text, :match_id, :user_id, :minute

  # Check whether the match has been started or not to display
  # timeframe of the commentary
  def minute
  	if read_attribute(:minute).nil?
  		'---'
  	else
  		read_attribute(:minute).to_s + '\''
  	end
  end

end
