require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def show
    @user = User.dinf(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(use_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome aboard !"
      redirect_to @user
    else 
      render 'new'
    end
  end

    private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

end