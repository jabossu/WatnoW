class SessionsController < ApplicationController
 
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_url(user)
      flash[:success] = "Welcome back #{user.name} !"
    else
      sleep(0.3)
      flash.now[:danger] = "Invalid email or password. Try again !"
      render "new"
    end
  end

  def destroy
    log_out
    flash[:success] = "You logged out."
    redirect_to root_url
  end

end
