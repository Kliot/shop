class BlogsController < ApplicationController

  before_action :set_blog, only: [:show, :edit, :update, :destroy]

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
  def index
    # @blogs = Blog.all
    @page = params[:page].present? ? params[:page].to_i : 1
    @blogs = Blog.page(@page)
  end

  def show
    # @blog = @blog.messages.build
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    @blog.user_id = current_user.id
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @blog =  Blog.find_by(id: params[:id], user: current_user)
    authorize @blog
    @blog.destroy
    redirect_to blogs_url
  end

  # def destroy
  #   @blog = Blog.find(params[:id])
  #   @blog.destroy
  #   respond_to do |format|
  #     format.html { redirect_to blogs_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :description, :image_url)
    end
end


  def destroy
    @comment = @product.comments.find_by(id: params[:id], user: current_user)
    authorize @comment
    @comment.destroy
    redirect_to product_comments_path(@product)
  end

