class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.datetime :born
      t.string :nationality
      t.text :bio
      t.string :photo
      t.datetime :retired
      t.text :history
      t.references :team, :null => false

      t.timestamps
    end
    add_index :players, :team_id, :unique => true
  end
end
