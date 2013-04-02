class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team_home_id
      t.integer :team_away_id
      t.integer :team_home_goal
      t.integer :team_away_goal
      t.text :statistics
      t.references :stadium

      t.timestamps
    end
    add_index :matches, :stadium_id
  end
end
