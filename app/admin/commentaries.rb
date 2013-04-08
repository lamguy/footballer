# encoding: utf-8
ActiveAdmin.register Commentary do
  # New/Edit forms  
  form do |f|
	f.inputs 'Gởi bình luận trận đấu đang diễn ra' do
		f.input :match
    f.input :minute
		f.input :commentary_text
  	end
  	f.buttons
  end

  controller do
  	def create
  		reg = /#(?<match>\d{1,10})/
  		text = params[:commentary][:commentary_text]
  		reg_match = text.match(reg)

  		match_id = reg_match[:match]

  		@match = Match.find(match_id)
  		@match.update_attribute(:statistics, 'commentary called me')

  		create!
  	end
  end

end
