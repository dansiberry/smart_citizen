class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  after_filter :store_location

  def set_locale
    valid_locales = ['en','es', 'ca']

   if !params[:locale].nil? && valid_locales.include?(params[:locale])
    I18n.locale = params[:locale]
    current_user.update_attribute(:locale, I18n.locale) if user_signed_in?
   elsif user_signed_in? && valid_locales.include?(current_user.locale)
     I18n.locale = current_user.locale
   else
    I18n.locale = I18n.default_locale
  end
end

def default_url_options
  { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
end

def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :city, :neighbourhood])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :city, :neighbourhood])
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
