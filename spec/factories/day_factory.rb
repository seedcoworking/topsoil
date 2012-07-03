FactoryGirl.define do
  factory :monday, class: Day do
    name 'Monday'
    start_time '00:00:00'
    end_time '23:59:59'
  end
end
