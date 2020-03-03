class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @filmmakers = User.all
  end

  def dashboard
    @user = current_user

  end


  def results

    if params[:query].present?

      sql_query = "city ILIKE :query OR biography ILIKE :query"
      @filmmakers = User.where(sql_query, query: "%#{params[:query]}%")

    elsif params[:tag].present?

      @filmmakers = User.tagged_with(params[:tag])

    elsif params[:shotlist_tag_list].present? && params[:location].present?
      @filmmakers = User.where("city ILIKE ?", "%#{params[:location]}%").tagged_with(params[:shotlist_tag_list].downcase.split, :any => true)

    elsif params[:shotlist_tag_list].present?
      # show all filmmakers whose user tags include at least one shotlist tag
      @filmmakers = User.tagged_with(params[:shotlist_tag_list].downcase.split, :any => true)

    elsif params[:location].present?
      #@filmmakers = User.where(city: params[:location])
      @filmmakers = User.where("city ILIKE ?", "%#{params[:location]}%")


    else
      @filmmakers = User.all
    end

  end


end
