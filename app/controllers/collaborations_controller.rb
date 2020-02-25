class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:destroy]

  def create
    @collaboration = Collaboration.new(collaboration_params)

    @shot = Shot.find(params[:shot_id])
    @collaboration.user = current_user
    @collaboration.shot = @shot
    if @collaboration.save
      redirect_to dashboard_path(@collaboration.user)
    else
      render 'shared/flashes'
    end
  end

  def destroy
    @collaboration.destroy
    redirect_to dashboard_path(@collaboration.user)
  end

  private

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end

  def collaboration_params
    params.require(:collaboration).permit(:deadline)
  end
end
