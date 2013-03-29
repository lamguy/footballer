class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :type
      t.string :tags
      t.references :user

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
