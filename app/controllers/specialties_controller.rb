
class SpecialtiesController < ApplicationController
before_action :set_specialty, only: [:show, :like, :unlike]

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


  def like
    if current_user.favorited?(@specialty)
      current_user.unfavorite(@specialty)
      result = {liked: false}
    else
      current_user.favorite(@specialty)
      result = {liked: true}
    end
    render json: result
  end

  def favorites
    @favorites = current_user.all_favorited
  end

  private

  def specialty_params
    params.require(:specialty).permit(:photo)
  end

  def set_specialty
    @specialty = Specialty.find(params[:id])
  end

end
