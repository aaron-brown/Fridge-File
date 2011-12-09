# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "MyString"
    quantity 1
    expiration_date "2011-12-09"
  end
end
