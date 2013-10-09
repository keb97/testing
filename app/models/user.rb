class User < ActiveRecord::Base
	has_many :locatables
	has_many :addresses, :through => :locatables
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
