class Address < ActiveRecord::Base
	has_many :locatables
	has_many :owners, :through => :locatables

	def full_address
	  [street, city, state, zip, country].compact.join(', ') # => "street, city, state, zip, country"
  end

  def full_address_changed?
		istreet_changed? || city_changed? || state_changed? || zip_changed? || country_changed?
  end

  geocoded_by :full_address
  after_validation :geocode, :if => :full_address_changed?
end