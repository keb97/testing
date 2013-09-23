# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    make "MyString"
    v_type "MyString"
    year "MyString"
    color "MyString"
  end
end
