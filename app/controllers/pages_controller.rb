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
      # show all filmmakers whose user tags include at least one shotlist tag
      @filmmakers = User.tagged_with(params[:shotlist_tag_list].downcase.split)
    end

  end


end
