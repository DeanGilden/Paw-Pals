class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :avatar, :contact_number])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address, :avatar, :contact_number])
  end
end
