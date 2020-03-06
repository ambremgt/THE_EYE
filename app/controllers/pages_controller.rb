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
      @filmmakers = @filmmakers.where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:tag].present?
      @filmmakers = @filmmakers.tagged_with(params[:tag])
    end

    if params[:shotlist_tag_list].present? && params[:location].present?
      @filmmakers = @filmmakers.where("city ILIKE ?", "%#{params[:location]}%").tagged_with(params[:shotlist_tag_list].downcase.split, :any => true)
    end

    if params[:shotlist_tag_list].present?
      # show all filmmakers whose user tags include at least one shotlist tag
      @filmmakers = @filmmakers.tagged_with(params[:shotlist_tag_list].downcase.split, :any => true)
    end
    if params[:location].present?
      #@filmmakers = User.where(city: params[:location])
      @filmmakers = @filmmakers.where("city ILIKE ?", "%#{params[:location]}%")
    end

    # Fix for french demo
    @filmmakers = User.where("city ILIKE ?", "%#{'San Francisco'}%" ) if @filmmakers.empty?

  end


end
