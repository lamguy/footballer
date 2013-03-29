class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string


    add_index :users, :confirmation_token, :unique => true
    # To avoid a short time window between running the migration and updating all existing
    # users as confirmed, do the following
    User.update_all(:confirmed_at => Time.now)
    # All existing user accounts should be able to log in after this.
  end
end
