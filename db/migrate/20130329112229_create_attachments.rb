class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :redactor_asset
      t.references :post
      t.boolean :thumbnail

      t.timestamps
    end
    add_index :attachments, :redactor_asset_id
    add_index :attachments, :post_id
  end
end
