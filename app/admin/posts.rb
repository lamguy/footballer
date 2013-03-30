ActiveAdmin.register Post do
  index do
  	column :id
  	column :title do |post|
  		link_to post.title, edit_admin_post_path(post)
  	end
  	column :user
  	column :created_at
  	default_actions
  end
end
