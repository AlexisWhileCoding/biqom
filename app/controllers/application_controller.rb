class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :gender, :age, :city])
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || activities_path
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end

