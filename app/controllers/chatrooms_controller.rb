class ChatroomsController < ApplicationController

  def create
    @sender = current_user
    @receiver = User.find(params["chatroom"]["receiver_id"])
    @chatroom = Chatroom.new(sender_id: @sender.id, receiver_id: @receiver.id)

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




