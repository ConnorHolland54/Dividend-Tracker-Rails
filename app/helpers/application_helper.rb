module ApplicationHelper
  def current_user
    session[:user_id]
  end
  def require_logged_in
    redirect_to '/login' unless current_user
  end

end
