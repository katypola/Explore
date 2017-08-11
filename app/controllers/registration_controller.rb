class RegistrationController < ApplicationController
	
	private

	def sign_up_params
  	params.require(:user).permit(:fname, :lname, :email, :username, :location_id, :propic, :password, :password_confirmation)
	end

	def account_update_params
  	params.require(:user).permit(:fname, :lname, :email, :username, :location_id, :propic, :password, :password_confirmation, :current_password)
	end

end
