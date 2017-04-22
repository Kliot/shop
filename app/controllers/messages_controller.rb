class MessagesController < ApplicationController
  #
  # before_action :require_user, only: [:show, :edit, :update, :destroy]
  # before_action :require_editor, only: [:show, :edit]
  # before_action :require_admin, only: [:destroy]

  # before_action :require_user, only: [:show]
  # before_action :require_editor, only: [:show, :edit]

  # def index
  #   @messages = Message.all
  # end
  #
  # def show
  #   @message = Message.find(params[:id])
  # end


  # def new
  #   @message = Message.new
  # end
  #
  # def edit
  #   @message = Message.find(params[:id])
  # end

  def create
    @blog = Blog.find(params[:blog_id])
    @message = @blog.messages.create(message_params)
    respond_to do |format|
      format.html { redirect_to blog_path(@blog) }
      format.js
    end
  end

  # def update
  #   @message = Message.find(params[:id])
  #
  #   if @message.update(message_params)
  #     redirect_to @message
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def destroy
  #   @message = Message.find(params[:id])
  #   @message.destroy
  #
  #   redirect_to messages_path
  # end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
