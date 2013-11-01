class Address < ActiveRecord::Base
	has_many :locatables
	has_many :owners, :through => :locatables

	def full_address
	    [street, city, state, zip, country].compact.join(', ') # => "street, city, state, zip, country"
  end
  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?
end