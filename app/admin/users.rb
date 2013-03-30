ActiveAdmin.register User do
  index do
  	column :id
  	column 'Name' do |user|
  		link_to user.firstname.to_s + ' ' + user.lastname.to_s, edit_admin_user_path(user)
  	end
  	column :email
  	column :city
  	column :created_at
  	default_actions
  end
end
