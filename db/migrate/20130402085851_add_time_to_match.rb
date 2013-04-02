class AddTimeToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :started_at, :datetime
    add_column :matches, :ended_at, :datetime
  end
end
