class Transaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :company_profile
	belongs_to :vehicle

	has_many :locatables, :as => :owner
	has_many :addresses, :through => :locatables, :dependent => :destroy

	accepts_nested_attributes_for :locatables

	def pickup
		self.addresses.references( :locatables ).where( locatables: { pickup: true }).first
	end
	
	def dropoff
		self.addresses.references( :locatables ).where( locatables: { pickup: false }).first
	end	
end