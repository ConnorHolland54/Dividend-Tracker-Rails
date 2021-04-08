class ApplicationController < ActionController::Base
  def home
    redirect_to '/login' unless current_user
   @session_id = session[:user_id]
  end

  def current_user
    session[:user_id]
  end

  private
  def require_logged_in
    redirect_to '/login' unless current_user
  end
end
