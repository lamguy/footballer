class RenameTypeToPostypeFromPosts < ActiveRecord::Migration
  def up
  	rename_column :posts, :type, :posttype
  end

  def down
  	rename_column :posts, :posttype, :type
  end
end
