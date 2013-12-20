require 'spec_helper'

describe Player do
  it { should have_many(:team_memberships) }
  it { should have_many(:teams).through(:team_memberships) }

  it { should have_valid(:name).when("Steve", "Eric") }
  it { should_not have_valid(:name).when(nil, "") }

  describe ".johns" do
    it "finds all the Johns" do
      john_m = FactoryGirl.create(:player, name: "John Moon")
      john_w = FactoryGirl.create(:player, name: "John Watson")

      johns = Player.johns

      expect(johns).to include john_m
      expect(johns).to include john_w
    end

    it "doesn't return not-johns" do
      joe = FactoryGirl.create(:player, name: "Joe Sutton")
      expect(Player.johns).to_not include joe
    end
  end
end
