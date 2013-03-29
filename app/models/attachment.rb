class Attachment < ActiveRecord::Base
  belongs_to :redactor_asset
  attr_accessible :post, :thumbnail
end
