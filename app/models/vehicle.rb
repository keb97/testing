class Vehicle < ActiveRecord::Base
	belongs_to :company_profile
	has_many :transactions

	validates_presence_of :make, :kind, :year, :color
end
