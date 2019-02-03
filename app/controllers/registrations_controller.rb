class RegistrationsController < Devise::RegistrationsController


	private

	def sign_up_params

		params.require(:user).permit(:first_name,
									 :last_name,
									 :email,
									 :password,
									 :password_confirmation,
									 :person_type)

	end

	def after_sign_up_path_for(resource)
	     conversations_index_path
	end

end