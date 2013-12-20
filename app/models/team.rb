class Team < ActiveRecord::Base
  has_many :team_memberships,
    inverse_of: :team

  has_many :players,
    through: :team_memberships,
    inverse_of: :teams

  validates_presence_of :name
end
