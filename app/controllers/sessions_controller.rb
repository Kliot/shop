class SessionsController < ApplicationController
   # skip_before_action :authenticate_user!
  # def new
  # end

  def create

    @user = User.find_or_initialize_by(email: user_info[:email])

    @user.auth_providers.find_or_initialize_by(uid: auth_hash[:uid],
                                 provider: auth_hash[:provider])


    @user.nick = user_info[:name]
    @user.email = user_info[:email]
    # @user.avatar = user_info[:image]
    @user.save

    sign_in(@user)
    redirect_to root_path

    # @user = User.find_by_email(params[:session][:email])
    # if @user && @user.authenticate(params[:session][:password])
    #   session[:user_id] = @user.id
    #   redirect_to '/'
    # else
    #   redirect_to 'new_user_session_path'
    # end
  end

  # def destroy
  #   # session[:user_id] = nil
  #   # redirect_to '/'
  # end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
  def user_info
    auth_hash[:info]
  end


end
