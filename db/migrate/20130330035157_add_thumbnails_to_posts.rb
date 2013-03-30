class AddThumbnailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :thumbnail, :string
    add_column :posts, :header_image, :string
  end
end
