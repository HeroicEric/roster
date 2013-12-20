# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team_membership do
    association :player
    association :team
  end
end
