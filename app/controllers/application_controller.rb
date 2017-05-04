class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  # helper_method :current_user

  include CurrentCart
  before_action :set_cart




  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  # def require_user
  #   redirect_to '/login' unless current_user
  # end
  #
  # def require_editor
  #   redirect_to '/' unless current_user.editor?
  # end
  #
  # def require_admin
  #   redirect_to '/' unless current_user.admin?
  # end

end
