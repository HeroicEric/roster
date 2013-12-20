require 'spec_helper'

describe TeamMembership do
  before(:all) { FactoryGirl.create(:team_membership) }

  it { should belong_to(:player) }
  it { should belong_to(:team) }

  it { should have_valid(:player).when(Player.new) }
  it { should have_valid(:team).when(Team.new) }

  it { should validate_uniqueness_of(:player_id).scoped_to(:team_id) }
end
