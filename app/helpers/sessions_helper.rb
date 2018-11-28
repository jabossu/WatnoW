module SessionsHelper

  # Logs in the given user
  def log_in(user)
      session[:user_id] = user.id
  end 

  # Logs out the curent user
  def log_out
    session.delete(:user_id)
    @current_user=nil
  end

  # Load the current user from the id stored in the session
  def current_user
    if session[:user_id]
      # Understand : if @curent_user.nil ? then execute ... if not, leave it alone
      @current_user ||= User.find_by(id: session[:user_id])
      # We use find_by because it returns a nil value it it fails, where find() raises and exception.
    end
  end

  #return true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end


end
