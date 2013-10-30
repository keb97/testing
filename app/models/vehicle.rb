class Vehicle < ActiveRecord::Base
	belongs_to :company_profile
	has_many :transactions

	has_attached_file :image, styles: { medium: "320x240>", thumb: "133x100>"}
	validates_presence_of :make, :kind, :year, :color
	validates_attachment :image, presence: true,
						content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
						size: { less_than: 5.megabytes }
end
