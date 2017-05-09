class MessagesController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @message = @blog.messages.create(message_params)
    @message.user_id = current_user.id
    respond_to do |format|
      if @message.save
        format.html { redirect_to blog_path(@blog) }
        format.js
      end
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end

end
