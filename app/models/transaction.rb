class Transaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :company_profile
	belongs_to :vehicle

	has_many :locatables, :as => :owner
	has_many :addresses, :through => :locatables, :dependent => :destroy
end
