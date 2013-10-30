class Locatable < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  belongs_to :address
end
