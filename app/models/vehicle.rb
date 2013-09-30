class Vehicle < ActiveRecord::Base
	belongs_to :company

	validates :make, presence: true
	validates :v_type, presence: true
	validates :year, presence: true
	validates :color, presence: true
end
