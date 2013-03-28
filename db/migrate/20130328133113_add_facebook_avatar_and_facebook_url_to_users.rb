class AddFacebookAvatarAndFacebookUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook_avatar, :string, :after => :uid
    add_column :users, :facebook_link, :string, :after => :facebook_avatar
  end
end
