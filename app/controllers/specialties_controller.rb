class SpecialtiesController < ApplicationController


  def index
    if params["search"]
      @filter = params["search"]["categories"].concat(params["search"]["timetoeats"]).flatten.reject(&:blank?)
      @specialties = Specialty.all.global_search("#{@filter}")
      # @specialties = @specialties.all.tagged_with(@filter, any: true)
    elsif params[:query].present?
      sql_query = "country ILIKE :query OR city ILIKE :query OR region ILIKE :query"
      @specialties = Specialty.where(sql_query, query: "%#{params[:query]}%")
    else
      @specialties = Specialty.all
    end
  end

  def show
    @specialty = Specialty.find(params[:id])
  end

  def specialty_params
    params.require(:specialty).permit(:photo)
  end
end
