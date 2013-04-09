class AddTwitterAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter_avatar, :string, :after => :facebook_avatar
  end
end
