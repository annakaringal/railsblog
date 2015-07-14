module SessionsHelper

  def is_authenticated?
    !!session[:user_id]
  end
end
