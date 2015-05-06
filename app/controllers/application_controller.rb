class ApplicationController < ActionController::Base
  # For cancan
  alias_method :current_user, :current_devise_user

  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # RMO AVOID Authenticity Token
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session


  before_filter :authenticate_devise_user!
end
