class ShotsController < ApplicationController
  before_action :set_shot, only: [:destroy]
  def new
    @shot = Shot.new
    @shot.shotlist = Shotlist.find(params[:shotlist_id])

  end

  def create
    @shot = Shot.new(shot_params)
    @shotlist = Shotlist.find(params[:id])
    @shot.shotlist = @shotlist
    if @shot.save
      redirect_to dashboard_path(@shotlist.user)
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
    params.require(:shot).permit(:angle, :shot_size, :movement, :description, :equipment, :actors, :props, :notes, :video_url)
  end
end

