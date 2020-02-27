class ChatroomsController < ApplicationController

  def create
    @chatroom = Chatroom.new

    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show"
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end



end




