class AddAdditionalFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string, :after => :email
    add_column :users, :lastname, :string, :after => :firstname
    add_column :users, :phone, :string, :after => :lastname
    add_column :users, :address, :string, :after => :phone
    add_column :users, :city, :string, :after => :address
    add_column :users, :state, :string, :after => :city
    add_column :users, :postal, :string, :after => :state
    add_column :users, :country, :string, :after => :postal
  end
end
