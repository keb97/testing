# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    pickup_address "MyString"
    dropoff_address "MyString"
    pickup_date "2013-10-08"
    pickup_time "2013-10-08 14:51:06"
    dropoff_date "2013-10-08"
    dropoff_time "2013-10-08 14:51:06"
  end
end
