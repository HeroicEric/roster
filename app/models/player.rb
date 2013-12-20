class Player < ActiveRecord::Base
  has_many :team_memberships,
    inverse_of: :player

  has_many :teams,
    through: :team_memberships,
    inverse_of: :players

  validates_presence_of :name 

  def self.johns
    where("name LIKE ?", "%john%")
  end
end
