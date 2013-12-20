require 'spec_helper'

describe Team do
  it { should have_many :team_memberships }
  it { should have_many(:players).through(:team_memberships) }

  it { should have_valid(:name).when("Steve", "Eric") }
  it { should_not have_valid(:name).when(nil, "") }
end
