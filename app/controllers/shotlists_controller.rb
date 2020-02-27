class ShotlistsController < ApplicationController
  before_action :set_shotlist, only: [:destroy]

  def new
    @shotlist = Shotlist.new
    @shotlist.user = current_user

  end

  def create
    @shotlist = Shotlist.new(shotlist_params)
    @shotlist.user = current_user
    if @shotlist.save
      redirect_to new_shotlist_shot_path(@shotlist)
    else
      render :new
    end
  end

  def destroy
    @shotlist.destroy
    redirect_to dashboard_path(@shotlist.user)
  end

  private

  def set_shotlist
    @shotlist = Shotlist.find(params[:id])
  end

  def shotlist_params
    params.require(:shotlist).permit(:description, :title)
  end
end

