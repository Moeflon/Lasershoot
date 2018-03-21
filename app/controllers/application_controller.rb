class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user?
    if session[:user]
      return true
    end
    return false
  end

  def current_user
    Player.find(session[:user])
  end

  def user_login(user)
    session[:user] = user.id
  end

  def user_logout
    session.clear
  end
end
