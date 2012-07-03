# Create the plans
small = Plan.create name: 'Small', price: 25
medium = Plan.create name: 'Medium', price: 85, limit: 40
unlimited = Plan.create name: 'Unlimited', price: 175, limit: 12
student = Plan.create name: 'Student', price: 35

['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'].each do |day|
  Day.create name: day, start_time: '00:00:00', end_time: '23:59:59', plan: unlimited
end

[small, medium, student].each do |plan|
  ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'].each do |day|
    Day.create name: day, start_time: '09:00:00', end_time: '17:59:59', plan: plan
  end
end
