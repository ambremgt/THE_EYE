class ShotsController < ApplicationController
  before_action :set_shot, only: [:destroy]
  def new
    @shot = Shot.new
    @shotlist = Shotlist.find(params[:shotlist_id])
    @shot.shotlist = @shotlist

  end

  def create
    @shot = Shot.new(shot_params)
    @shotlist = Shotlist.find(params[:shotlist_id])
    @shot.shotlist = @shotlist
    if @shot.save
      redirect_to shotlist_path(@shotlist)
    else
      render :new
    end
  end

  def destroy
    @shot.destroy
    @shotlist = @shot.shotlist
    redirect_to dashboard_path(@shotlist.user)
  end

  private

  def set_shot
    @shot = Shot.find(params[:id])
  end

  def shot_params
    params.require(:shot).permit(:location, :angle, :shot_size, :movement, :description, :equipment, :actors, :props, :notes, :video_url)
  end
end

