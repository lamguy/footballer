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
  form do |f|
	f.inputs :title
	f.inputs :summary
	f.inputs :content
	f.inputs :posttype
	f.inputs :tags
  	f.buttons
  end
end
