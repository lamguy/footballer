class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.references :match
      t.references :user
      t.text :commentary_text

      t.timestamps
    end
    add_index :commentaries, :match_id
    add_index :commentaries, :user_id
  end
end
