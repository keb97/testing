class RegistrationsController < Devise::RegistrationsController

	def new
		if (user_signed_in? || company_user_signed_in? || admin_signed_in?)
			redirect_to :back, alert: "You cannot register two roles at the same time!"
		else
			super
		end
	end
end