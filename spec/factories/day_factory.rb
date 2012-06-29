FactoryGirl.define do
  factory :monday, class: Day do
    name 'Monday'
    start_time { 2.days.ago.to_stime }
    end_time { 1.day.ago.to_stime }
  end
end
