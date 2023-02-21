class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(
        :username, :email, :password, :password_confirmation, :userName)}
    end

    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
      end
      
end
