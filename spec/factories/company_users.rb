# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company_user do
		sequence(:email){|n| "newcompanyuser#{n}@example.com" }
	  password "test1234"
	  password_confirmation "test1234"
  end
end
