class SessionController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(password: params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to sessions_path
  end
end
