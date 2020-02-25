class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def results

    if params[:query].present?
      sql_query = "speciality ILIKE :query OR city ILIKE :query OR biography ILIKE :query"
      @filmmakers = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @filmmakers = User.all
    end

  end

end
