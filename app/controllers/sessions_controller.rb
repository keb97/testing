class SessionsController < Devise::SessionsController

	def new
		if (user_signed_in? || company_user_signed_in? || admin_signed_in?)
			redirect_to :back, alert: "You can only sign into a single user!"
		else
			super
		end
	end
end