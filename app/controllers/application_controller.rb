class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  #   For APIs, you may want to use :null_session instead.

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters

     added_attrs = [:username, :email, :password, :password_confirmation, :current_password , :avatar]
     devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :password, :password_confirmation, :avatar, :avatar_cache]
     devise_parameter_sanitizer.permit :account_update, keys: added_attrs

    end
end
