class User < ActiveRecord::Base
	has_many :locatables
	has_many :addresses, :through => :locatables, :dependent => :destroy

	accepts_nested_attributes_for :addresses, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
