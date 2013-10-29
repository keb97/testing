class CompanyProfile < ActiveRecord::Base
	has_many :company_users, :dependent => :delete_all
	has_many :vehicles
	has_many :transactions
	#has_many :users, :through => :transactions
	has_attached_file :photo
	validates_presence_of :name, :description
	validates_attachment :photo,
						content_type: { content_type: ['photo/jpeg', 'photo/jpg', 'photo/png', 'photo/gif'] },
						size: { less_than: 5.megabytes }
end
