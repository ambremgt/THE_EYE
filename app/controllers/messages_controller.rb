class MessagesController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if current_user.id == @chatroom.sender_id
      @receiving_user = User.find(@chatroom.receiver_id)
    else
      @receiving_user = User.find(@chatroom.sender_id)
    end
    # @receiving_user = @chatroom.users.select{ |user| user != current_user }

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      UserChannel.broadcast_to(
        @receiving_user,
        notif_counter: @receiving_user.unread_messages_hash.values.sum
        # @chatroom.messages.where.not(user: @receiving_user).where(read: false).count # Create a method to count unread messages for each chatroom
      )

      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show"
    end
  end


  def message_params
    params.require(:message).permit(:content)
  end
end
