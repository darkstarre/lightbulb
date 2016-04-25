class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    if current_user == params[:id]
      noop
    else
      render status: :forbidden, text: "This is not your ideas, No Touchie!"
      return
    end
  end

  helper_method :signed_in?
  def signed_in?
    !!current_user
  end

  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def anonymous_user
    @anonymous_user = User.find_by_id(2)
  end
end
