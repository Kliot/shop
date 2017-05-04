class UsersController < ApplicationController
  def me
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to me_users_path

  end

  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     session[:user_id] = @user.id
  #     redirect_to '/'
  #   else
  #     redirect_to '/users/sign_up'
  #   end
  # end

  private
  def user_params
     params.require(:user).permit(:nick, :email, :password, :password_confirmation, :avatar)
   end
end
