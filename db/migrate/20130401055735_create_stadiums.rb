class CreateStadiums < ActiveRecord::Migration
  def change
    create_table :stadiums do |t|
      t.string :name
      t.text :history
      t.string :location
      t.references :league

      t.timestamps
    end
    add_index :stadiums, :league_id
  end
end
