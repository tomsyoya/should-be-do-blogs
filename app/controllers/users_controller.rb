class UsersController < ApplicationController
  before_action :set_user_id, only: [:edit, :update, :show, :destroy]
  before_action :check_logged_in, only: [:show, :edit, :update, :destroy]
  
  def new
    if logged_in?
      redirect_to user_path(current_user.id)
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      user = User.find_by(email: @user.email)
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :introduction, :image, :password, :password_confirmation)
  end
  
  def set_user_id
    @user = User.find(params[:id])
  end
  
  def check_logged_in
    if !logged_in?
      redirect_to new_session_path
    end
  end
end
