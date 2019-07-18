class MessagesController < ApplicationController

  def message_index
    @messages = Message.all
  end

  def new_message
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = session[:user_id]
    if @message.save
      redirect_to @message
    else
      render :new_message
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :color_hex)
  end

end


