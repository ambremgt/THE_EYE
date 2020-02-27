class UsersController < ApplicationController

  def show
    @filmmaker = User.find(params[:id])
    @chatroom = Chatroom.new
  end
end
