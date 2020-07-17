class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.find_by(name: login_params[:name])
    if user&.authenticate(login_params[:password])
      flash[:success] = 'You have successfully logged in!'
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'Wrong credentials.'
      render :login
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:info] = 'You just logged out.'
    redirect_to login_url
  end

  private

  def login_params
    params.require(:credentials).permit(:name, :password)
  end
end

