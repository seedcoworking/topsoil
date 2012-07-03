FactoryGirl.define do
  factory :small, class: Plan do
    name 'Small'
    price 25
  end

  factory :medium, class: Plan do
    name 'Medium'
    price 85
    limit 40
    days { |day| [day.association(:monday)]  }
  end

  factory :unlimited, class: Plan do
    name 'Unlimited'
    price 175
    limit 12
  end

  factory :student, class: Plan do
    name 'Student'
    price 35
  end
end
