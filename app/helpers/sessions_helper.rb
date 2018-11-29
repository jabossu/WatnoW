module SessionsHelper

  # Logs in the given user
  def log_in(user)
      session[:user_id] = user.id
  end 

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the curent user
  def log_out
    session.delete(:user_id)
    forget(@current_user)
    @current_user=nil
  end

  # Load the current user from the id stored in the session
  def current_user
    # If a session exists
    if (user_id = session[:user_id])
      # Understand : if @curent_user.nil ? then execute ... if not, leave it alone
      @current_user ||= User.find_by(id: user_id)
      # We use find_by because it returns a nil value it it fails, where find() raises and exception.
    # Else, if a signed cookie containing user_id exists
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authentificated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  #return true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end


end
