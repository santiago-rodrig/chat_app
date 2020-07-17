class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:user_id]
      unless @current_user
        user = User.find_by(id: session[:user_id])
        if user
          @current_user = user
        else
          session.delete(:user_id)
        end
      end
    end

    @current_user
  end

  def require_login
    unless current_user
      flash[:info] = 'You must be logged in to use the app.'
      redirect_to login_url
    end
  end
end

