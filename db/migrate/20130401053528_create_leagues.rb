class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.referenes :region
      t.string :name

      t.timestamps
    end
  end
end
