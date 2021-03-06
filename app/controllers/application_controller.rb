# Top-level application controller for all web endpoints
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def boomtown
    raise("Intentional exception from the web app")
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
