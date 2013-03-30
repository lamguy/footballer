ActiveAdmin.register Post do

  #Filters  
  filter :user, :content_columns => :email
  filter :title
  filter :summary
  filter :content
  filter :posttpe
  filter :tags
  filter :start_datetime
  filter :end_datetime

  index do
  	column :id
  	column :title do |post|
  		link_to post.title, edit_admin_post_path(post)
  	end
  	column :user
  	column :created_at
  	default_actions
  end

  # New/Edit forms  
  form( :html => { :multipart => true } ) do |f|
	f.inputs '' do
		f.input :title
		f.input :summary, input_html: { class: "redactor" }
		f.input :content, input_html: { class: "redactor" }
		f.input :posttype
		f.input :tags
		f.input :header_image
  	end
  	f.buttons
  end

  controller do
	  def update
	    update!
	  end 
  end 

end
