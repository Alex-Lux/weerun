class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number, :language_spoken, :birthdate, :description, :gender, :pace, :photo, :photo_cache, :email, :current_password, :password, :password_confirmation])
  end
end
