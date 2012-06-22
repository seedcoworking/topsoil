FactoryGirl.define do
  factory :user do
    name 'Lester Tester'
    email 'lester@example.com'
    card
    association :plan, factory: :unlimited
  end
end
