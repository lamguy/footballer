class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.text :history
      t.references :division

      t.timestamps
    end
    add_index :teams, :division_id
  end
end
