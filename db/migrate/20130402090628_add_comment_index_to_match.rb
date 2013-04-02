class AddCommentIndexToMatch < ActiveRecord::Migration
  def change
    add_column :comments, :match_id, :integer
    add_index :comments, :match_id
  end
end
