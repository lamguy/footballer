class AddMinuteToCommentaries < ActiveRecord::Migration
  def change
    add_column :commentaries, :minute, :string
  end
end
