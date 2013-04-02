class CreatePlayingTeams < ActiveRecord::Migration
  def change
    create_table :playing_teams do |t|
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end

    add_index :playing_teams, :team_id
    add_index :playing_teams, :player_id
  end
end
