class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :player_id, null: false
      t.integer :team_id, null: false

      t.timestamps
    end
  end
end
