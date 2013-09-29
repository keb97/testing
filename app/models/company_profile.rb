class CompanyProfile < ActiveRecord::Base
	has_many :company_users, :dependent => :delete_all
	has_many :vehicles

	validates :description, presence: true
end
