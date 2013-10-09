# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    PickupAddress "MyString"
    DropoffAddress "MyString"
    PickupDate "2013-10-08"
    PickupTime "2013-10-08 14:51:06"
    DropoffDate "2013-10-08"
    DropoffTime "2013-10-08 14:51:06"
  end
end
