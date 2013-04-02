# encoding: utf-8
ActiveAdmin.register Commentary do
  # New/Edit forms  
  form do |f|
	f.inputs 'Gởi bình luận trận đấu đang diễn ra' do
		f.input :match
		f.input :commentary_text
  	end
  	f.buttons
  end

end
