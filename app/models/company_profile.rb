class CompanyProfile < ActiveRecord::Base
	has_many :company_users, :dependent => :delete_all
	has_many :vehicles

	validates_presence_of :description
end
