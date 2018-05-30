class SessionsController < ApplicationController
  
  def index
    redirect_to root_path
  end

  def new
    if logged_in?
      redirect_to user_path(current_user.id)
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash[:error] = "ログインIDまたはパスワードのどちらかが誤っています"
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_session_path
  end
end
