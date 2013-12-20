class TeamMembership < ActiveRecord::Base
  belongs_to :player,
    inverse_of: :team_memberships

  belongs_to :team,
    inverse_of: :team_memberships

  validates_uniqueness_of :player_id, scope: :team_id
end
