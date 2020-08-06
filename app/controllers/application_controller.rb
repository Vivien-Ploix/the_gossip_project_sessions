class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user


  private

  def require_author
    redirect_to login_path unless @post.user == current_user
  end
end
