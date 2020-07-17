class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :set_user, only: [:destroy, :edit, :update, :show]
  before_action :require_same_user, only: [:destroy, :edit, :update]

  PREFIX = 'User was successfully '

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "#{PREFIX}created."
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @user.destroy
    flash[:info] = "#{PREFIX}destroyed."
    redirect_to login_url
  end

  def update
    if @user.update(user_params)
      flash[:success] = "#{PREFIX}updated."
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :email, :password, :password_confirmation
    )
  end

  def require_same_user
    unless @user == current_user
      flash[:warning] = 'You cannot change other users info.'
      redirect_to root_url
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
end

