class Vehicle < ActiveRecord::Base
	belongs_to :company

	validates :description, presence: true
end
