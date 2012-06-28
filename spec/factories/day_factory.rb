FactoryGirl.define do
  factory :monday, class: Day do
    name 'Monday'
    start_time { 2.days.ago }
    end_time { 1.day.ago }
    #association :plan, factory: :medium
  end
end
