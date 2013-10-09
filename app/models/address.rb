class Address < ActiveRecord::Base
	has_many :locatables
	has_many :owners, :through => :locatables
end
