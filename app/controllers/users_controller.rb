class UsersController < ApplicationController

  def show
    @filmmaker = User.find(params[:id])
  end
end
