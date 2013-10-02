class Vehicle < ActiveRecord::Base
	belongs_to :company_profile

	validates_presence_of :make, :v_type, :year, :color
end
