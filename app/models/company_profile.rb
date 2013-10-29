class CompanyProfile < ActiveRecord::Base
	has_many :company_users, :dependent => :delete_all
	has_many :vehicles
	has_many :transactions
	#has_many :users, :through => :transactions

	validates_presence_of :name, :description
end
