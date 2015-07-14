class SessionsController < ApplicationController
  def login
    user = User.find_by(user_name: params[:user_name]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_path
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
