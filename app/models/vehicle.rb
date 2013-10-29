class Vehicle < ActiveRecord::Base
	belongs_to :company_profile
	has_many :transactions

	validates_presence_of :make, :kind, :year, :color
	validates_presence_of_attachment :image,
						content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
						size: { less_than: 5.megabytes }

	has_attached_file :image		
end
