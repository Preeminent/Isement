class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :street
    devise_parameter_sanitizer.for(:account_update) << :street
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:account_update) << :city
    devise_parameter_sanitizer.for(:sign_up) << :state
    devise_parameter_sanitizer.for(:account_update) << :state
    devise_parameter_sanitizer.for(:sign_up) << :alt_email
    devise_parameter_sanitizer.for(:account_update) << :alt_email
    devise_parameter_sanitizer.for(:sign_up) << :zip
    devise_parameter_sanitizer.for(:account_update) << :zip
    devise_parameter_sanitizer.for(:sign_up) << :phone
    devise_parameter_sanitizer.for(:account_update) << :phone
  end

end
