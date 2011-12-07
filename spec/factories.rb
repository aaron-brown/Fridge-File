Factory.define :user do |user|
  user.name   "John Doe"
  user.email  "jdoe@example.com"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :fridge do |fridge|
  fridge.name "John's Fridge"
end