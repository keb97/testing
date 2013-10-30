class Transaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :company_profile
	belongs_to :vehicle
end
