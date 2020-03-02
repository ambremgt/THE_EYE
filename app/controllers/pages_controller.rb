class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @filmmakers = User.all
  end

  def dashboard
    @user = current_user

  end


  def results
    @filmmakers = User.all
    if params[:query].present?
      sql_query = "city ILIKE :query OR biography ILIKE :query"
      @filmmakers = User.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:tag].present?
      @filmmakers = User.tagged_with(params[:tag])
    elsif params[:shotlist_tag_list].present?
      # todo: show all filmmakers whose user tags include at least one shotlist tag
      # @project_tags = Shotlist.tagged_with(params[:shotlist_tags])
      #@filmmakers = User.tagged_with(@project_tags)
    end
    raise
  end

  private

end
