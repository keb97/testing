class CompanyProfile < ActiveRecord::Base
	has_many :company_users, :dependent => :delete_all
	has_many :vehicles
	has_many :transactions
	#has_many :users, :through => :transactions

	validates_presence_of :name, :description
	validates_presence_of_attachment :photo,
						content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
						size: { less_than: 5.megabytes }

	has_attached_file :photo					
end
