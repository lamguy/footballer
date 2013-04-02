class AddTeamIndexToStadium < ActiveRecord::Migration
  def change
    add_column :stadiums, :team_id, :integer
    add_index :stadiums, :team_id
  end
end
