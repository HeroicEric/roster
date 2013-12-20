class AddUniqueIndexToTeamMemberships < ActiveRecord::Migration
  def up
    add_index :team_memberships, [:player_id, :team_id], unique: true
  end

  def down
    remove_index :team_memberships, [:player_id, :team_id]
  end
end
