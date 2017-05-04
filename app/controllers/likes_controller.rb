class LikesController < ApplicationController
  before_action :set_blog

  def likes
    @user = current_user # before_action :authenticate_user, only: [:likes]
    @blog = Blog.find(params[:id])
    @user.like!(@blog)
    redirect_to :back
  end
  def unlikes
    @user = current_user # before_action :authenticate_user, only: [:likes]
    @blog = Blog.find(params[:id])
    @user.unlike!(@blog)
    redirect_to :back
  end
  def like
    @result = @resource.add_like!(current_user)
  end

  def unlike
    @result = @resource.unlike!(current_user)
  end

  private

  def set_product
    @resource = if params[:blog_id].present?
                  Blog.find params[:blog_id]
                end
  end

end